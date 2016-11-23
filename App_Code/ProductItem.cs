using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductItem
/// </summary>
public class ProductItem //: IEnumerable
{
    private string _productName;
    private string _productCode;
    private decimal _productPrice;
    private int _productUnits;
    public string ProductName
    {
        get
        {
            return _productName;
        }
        set
        {
            _productName = value;
        }
    }
    public string ProductCode
    {
        get
        {
            return _productCode;
        }
    }
    public decimal ProductPrice
    {
        get
        {
            return _productPrice;
        }
    }
    public ProductItem(string productName, string productCode, decimal productPrice, int productUnits)
    {
        _productName = productName;
        _productCode = productCode;
        _productPrice = productPrice;
        _productUnits = productUnits;
    }

    public string GetDescription()
    {
        string str = ProductName + "\t\t$" + ProductPrice + "\n" + _productUnits + "\t" + ProductCode;
        return str;
    }
    public static List<ProductItem> GenterateGenericInventoryList()
    {
        List<ProductItem> inventoryList = new List<ProductItem>();
        inventoryList.Add(new ProductItem("Generic Item 1", "0001", 1.50m, 100));
        inventoryList.Add(new ProductItem("Generic Item 2", "0002", 2.50m, 200));
        inventoryList.Add(new ProductItem("Generic Item 3", "0003", 3.50m, 300));
        inventoryList.Add(new ProductItem("Generic Item 4", "0004", 4.50m, 400));
        return inventoryList;
    }

    public static Dictionary<string, ProductItem> GenerateGenericInventoryDictionary()
    {
        Dictionary<string, ProductItem> inventoryDict = new Dictionary<string, ProductItem>();
        var newItem = new ProductItem("Generic Item 1", "0001", 1.50m, 100);
        inventoryDict.Add(newItem.ProductCode, newItem);
        newItem = new ProductItem("Generic Item 2", "0002", 2.50m, 200);
        inventoryDict.Add(newItem.ProductCode, newItem);
        newItem = new ProductItem("Generic Item 3", "0003", 3.50m, 300);
        inventoryDict.Add(newItem.ProductCode, newItem);
        newItem = new ProductItem("Generic Item 4", "0004", 4.50m, 400);
        inventoryDict.Add(newItem.ProductCode, newItem);
        return inventoryDict;
    }

    public IEnumerator GetEnumerator()
    {
        throw new NotImplementedException();
    }
}