package com.dexvis.util;

import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonNumber;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.json.JsonString;
import javax.json.JsonStructure;
import javax.json.JsonValue;

import com.dexvis.datastruct.NVP;

/**
 * 
 * A rather meager class containing JSON utilities.
 * 
 * @author Patrick Martin
 *
 */
public class JsonUtil
{
  public static Object pathToObject(String jsonPath) throws IOException
  {
    return fileToObject(new File(jsonPath));
  }
  
  public static Object fileToObject(File jsonFile) throws IOException
  {
    return stringToObject(StreamUtil.readFile(jsonFile));
  }
  
  /**
   * 
   * Given a string containing valid JSON, return it's Java object
   * representation.
   * 
   * @param jsonStr
   *          The JSON string to parse.
   * 
   * @return The java object equivalent to the JSON string.
   * 
   */
  public static Object stringToObject(String jsonStr)
  {
    try
    {
      System.out.println("PARSING-JSON: '" + jsonStr);
      JsonReader reader = Json.createReader(new StringReader(jsonStr));
      JsonStructure jsonStruct = reader.read();
      return parseJsonValue(jsonStruct);
    }
    catch(Exception ex)
    {
      ex.printStackTrace();
      Object empty[] = new Object[0];
      return empty;
    }
  }
  
  public static List<NVP> parseNVPList(String rootName, String jsonStr)
  {
    ArrayList<NVP> nvpList = new ArrayList<NVP>();
    if (jsonStr != null)
    {
      Object jsonObj = stringToObject(jsonStr);
      parseNVPList(rootName, nvpList, jsonObj);
    }
    return nvpList;
  }
  
  private static void parseNVPList(String name, List<NVP> nvpList,
      Object jsonObj)
  {
    if (name == null || name.trim().length() <= 0 || jsonObj == null)
    {
      return;
    }
    
    if (jsonObj instanceof Map)
    {
      Map<String, Object> map = (Map<String, Object>) jsonObj;
      for (Object key : map.keySet())
      {
        parseNVPList(name + "." + key, nvpList, map.get(key));
      }
    }
    else if (jsonObj instanceof List)
    {
      List<Object> list = (List<Object>) jsonObj;
      for (Object obj : list)
      {
        parseNVPList(name, nvpList, obj);
      }
    }
    // Primitives
    else
    {
      nvpList.add(new NVP(name, jsonObj.toString()));
    }
  }
  
  public static List<Map<String, String>> parseTabular(String jsonStr)
  {
    if (jsonStr != null)
    {
      return parseTabular(stringToObject(jsonStr));
    }
    return null;
  }
  
  private static List<Map<String, String>> parseTabular(Object jsonObj)
  {
    List<Map<String, String>> list = new ArrayList<Map<String, String>>();
    
    if (jsonObj == null)
    {
      return null;
    }
    
    if (jsonObj instanceof List)
    {
      List<Object> objList = (List<Object>) jsonObj;
      for (Object obj : objList)
      {
        if (obj instanceof Map) {
          Map jsonObjMap = (Map) obj;
          
          if (jsonObjMap != null) {
            Map<String, String> objMap = new LinkedHashMap<String, String>();
            for (Object key : jsonObjMap.keySet()) {
              String keyStr = key.toString();
              Object val = jsonObjMap.get(key);
              String valStr = (val == null) ? "" : val.toString();
              objMap.put(keyStr, valStr);
            }
            list.add(objMap);
          }
        }
      }
    }
    return list;
  }
  
  /**
   * 
   * Given a JSON Value, return it's Java object representation.
   * 
   * @param value
   *          The JSON value to convert.
   * 
   * @return The Java object value of the converted JSON.
   * 
   */
  public static Object parseJsonValue(JsonValue value)
  {
    if (value == null)
    {
      return null;
    }
    switch (value.getValueType())
    {
      case ARRAY:
        return parseJsonArray((JsonArray) value);
      case OBJECT:
        return parseJsonObject((JsonObject) value);
      case STRING:
        return ((JsonString) value).getString();
      case NUMBER:
        String num = ((JsonNumber) value).toString();
        try
        {
          return Integer.parseInt(num);
        }
        catch(Exception ex)
        {
          try
          {
            return Double.parseDouble(num);
          }
          catch(Exception iEx)
          {
            iEx.printStackTrace();
            return num;
          }
        }
      case TRUE:
        return true;
      case FALSE:
        return false;
      case NULL:
        return null;
    }
    return null;
  }
  
  /**
   * 
   * Given a JsonArray, convert it to a list of objects.
   * 
   * @param array
   *          The JsonArray to convert.
   * 
   * @return A list of objects.
   * 
   */
  public static List<Object> parseJsonArray(JsonArray array)
  {
    List<Object> objects = new ArrayList<Object>();
    if (array == null)
    {
      return objects;
    }
    for (JsonValue value : array)
    {
      objects.add(parseJsonValue(value));
    }
    return objects;
  }
  
  /**
   * 
   * Given a JsonObject, return it's equivalent as a Map.
   * 
   * @param obj
   *          The JSON object to convert.
   * @return An equivalent representation expressed as a Map<String, Object.
   */
  public static Map<String, Object> parseJsonObject(JsonObject obj)
  {
    Map<String, Object> objMap = new HashMap<String, Object>();
    if (obj == null)
    {
      return objMap;
    }
    
    for (String key : obj.keySet())
    {
      objMap.put(key, parseJsonValue(obj.get(key)));
    }
    return objMap;
  }
  
  public static void main(String args[])
  {
    System.out.println(stringToObject("[ {\"foo\": \"bar\"} ]"));
  }
}
