//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tiia {
    /// 属性
    public struct Attribute: TCOutputModel {
        /// 属性
        public let type: String
        
        /// 属性详情
        public let details: String
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case details = "Details"
        }
    }
    
    /// 属性检测到的人体
    public struct AttributesForBody: TCOutputModel {
        /// 人体框。当不开启人体检测时，内部参数默认为0。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rect: ImageRect
        
        /// 人体检测置信度。取值0-1之间，当不开启人体检测开关时默认为0。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detectConfidence: Float?
        
        /// 属性信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attributes: [BodyAttributes]?
        
        enum CodingKeys: String, CodingKey {
            case rect = "Rect"
            case detectConfidence = "DetectConfidence"
            case attributes = "Attributes"
        }
    }
    
    /// 属性列表。
    public struct BodyAttributes: TCOutputModel {
        /// 属性值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?
        
        /// 置信度，取值0-1之间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let confidence: Float?
        
        /// 属性名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case confidence = "Confidence"
            case name = "Name"
        }
    }
    
    /// 图像主体区域。
    public struct Box: TCOutputModel {
        /// 图像主体区域。
        public let rect: ImageRect
        
        /// 置信度。
        public let score: Float
        
        /// 主体区域类目ID
        public let categoryId: Int64
        
        enum CodingKeys: String, CodingKey {
            case rect = "Rect"
            case score = "Score"
            case categoryId = "CategoryId"
        }
    }
    
    /// 车牌信息
    public struct CarPlateContent: TCOutputModel {
        /// 车牌信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plate: String?
        
        /// 车牌颜色。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let color: String?
        
        /// 车牌类型，包含：0普通蓝牌，1双层黄牌，2单层黄牌，3新能源车牌，4使馆车牌，5领馆车牌，6澳门车牌，7香港车牌，8警用车牌，9教练车牌，10武警车牌，11军用车牌   -2遮挡污损模糊车牌/异常   其他无牌
        /// 注意：
        /// 此字段可能返回 null，表示取不到有效值。
        /// 此字段结果遮挡污损模糊车牌/异常：包含PlateStatus参数的“遮挡污损模糊车牌”，针对车牌异常，建议参考此字段，更全面
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?
        
        /// 车牌在图片中的坐标信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plateLocation: [Coord]?
        
        /// 判断车牌是否遮挡：“遮挡污损模糊车牌”和"正常车牌"。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plateStatus: String?
        
        /// 车牌遮挡的置信度，0-100。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plateStatusConfidence: Int64?
        
        /// 车牌角度。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plateAngle: Float?
        
        enum CodingKeys: String, CodingKey {
            case plate = "Plate"
            case color = "Color"
            case type = "Type"
            case plateLocation = "PlateLocation"
            case plateStatus = "PlateStatus"
            case plateStatusConfidence = "PlateStatusConfidence"
            case plateAngle = "PlateAngle"
        }
    }
    
    /// 车辆属性识别的结果
    public struct CarTagItem: TCOutputModel {
        /// 车系
        public let serial: String
        
        /// 车辆品牌
        public let brand: String
        
        /// 车辆类型
        public let type: String
        
        /// 车辆颜色
        public let color: String
        
        /// 车系置信度，0-100
        public let confidence: Int64
        
        /// 年份，没识别出年份的时候返回0
        public let year: Int64
        
        /// 车辆在图片中的坐标信息
        public let carLocation: [Coord]
        
        /// 车牌信息，仅车辆识别（增强版）支持
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plateContent: CarPlateContent
        
        /// 车牌信息置信度，0-100，仅车辆识别（增强版）支持
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plateConfidence: Int64?
        
        /// 车辆类型置信度，0-100，仅车辆识别（增强版）支持
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let typeConfidence: Int64?
        
        /// 车辆颜色置信度，0-100，仅车辆识别（增强版）支持
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let colorConfidence: Int64?
        
        /// 车辆朝向，仅车辆识别（增强版）支持
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orientation: String?
        
        /// 车辆朝向置信度，0-100，仅车辆识别（增强版）支持
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orientationConfidence: Int64?
        
        enum CodingKeys: String, CodingKey {
            case serial = "Serial"
            case brand = "Brand"
            case type = "Type"
            case color = "Color"
            case confidence = "Confidence"
            case year = "Year"
            case carLocation = "CarLocation"
            case plateContent = "PlateContent"
            case plateConfidence = "PlateConfidence"
            case typeConfidence = "TypeConfidence"
            case colorConfidence = "ColorConfidence"
            case orientation = "Orientation"
            case orientationConfidence = "OrientationConfidence"
        }
    }
    
    /// 整张图颜色信息。
    public struct ColorInfo: TCOutputModel {
        /// RGB颜色值（16进制），例如：291A18。
        public let color: String
        
        /// 当前颜色标签所占比例。
        public let percentage: Float
        
        /// 颜色标签。蜜柚色，米驼色等。
        public let label: String
        
        enum CodingKeys: String, CodingKey {
            case color = "Color"
            case percentage = "Percentage"
            case label = "Label"
        }
    }
    
    /// 汽车坐标信息
    public struct Coord: TCOutputModel {
        /// 横坐标x
        public let x: Int64
        
        /// 纵坐标y
        public let y: Int64
        
        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
        }
    }
    
    /// 图像标签检测结果。
    public struct DetectLabelItem: TCOutputModel {
        /// 图片中的物体名称。
        public let name: String
        
        /// 算法对于Name的置信度，0-100之间，值越高，表示对于Name越确定。
        public let confidence: Int64
        
        /// 标签的一级分类
        public let firstCategory: String
        
        /// 标签的二级分类
        public let secondCategory: String
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case confidence = "Confidence"
            case firstCategory = "FirstCategory"
            case secondCategory = "SecondCategory"
        }
    }
    
    /// 图库信息。
    public struct GroupInfo: TCOutputModel {
        /// 图库Id。
        public let groupId: String
        
        /// 图库名称。
        public let groupName: String
        
        /// 图库简介。
        public let brief: String
        
        /// 图库容量。
        public let maxCapacity: UInt64
        
        /// 该库的访问限频 。
        public let maxQps: UInt64
        
        /// 图库类型，对应不同服务类型，默认为1。建议手动调整为4～6，1～3为历史版本，不推荐。
        /// 参数值：
        /// 4：在自建图库中搜索相同原图，可支持裁剪、翻转、调色、加水印后的图片搜索，适用于图片版权保护、原图查询等场景。
        /// 5：在自建图库中搜索相同或相似的商品图片，适用于商品分类、检索、推荐等电商场景。
        /// 6：在自建图片库中搜索与输入图片高度相似的图片，适用于相似图案、logo、纹理等图像元素的搜索。
        public let groupType: UInt64
        
        /// 图库图片数量。
        public let picCount: UInt64
        
        /// 图库创建时间。
        public let createTime: String
        
        /// 图库更新时间。
        public let updateTime: String
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case brief = "Brief"
            case maxCapacity = "MaxCapacity"
            case maxQps = "MaxQps"
            case groupType = "GroupType"
            case picCount = "PicCount"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 图片信息
    public struct ImageInfo: TCOutputModel {
        /// 图片名称。
        public let entityId: String
        
        /// 用户自定义的内容。
        public let customContent: String
        
        /// 图片自定义标签，JSON格式。
        public let tags: String
        
        /// 图片名称。
        public let picName: String
        
        /// 相似度。
        public let score: Int64
        
        enum CodingKeys: String, CodingKey {
            case entityId = "EntityId"
            case customContent = "CustomContent"
            case tags = "Tags"
            case picName = "PicName"
            case score = "Score"
        }
    }
    
    /// 图像主体区域坐标
    public struct ImageRect: TCInputModel, TCOutputModel {
        /// 左上角横坐标。
        public let x: Int64
        
        /// 左上角纵坐标。
        public let y: Int64
        
        /// 宽度。
        public let width: Int64
        
        /// 高度。
        public let height: Int64
        
        public init (x: Int64, y: Int64, width: Int64, height: Int64) {
            self.x = x
            self.y = y
            self.width = width
            self.height = height
        }
        
        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case width = "Width"
            case height = "Height"
        }
    }
    
    /// 图片标签。
    public struct ImageTag: TCOutputModel {
        /// 标签内容。
        public let name: String
        
        /// 置信度范围在0-100之间。值越高，表示目标为相应结果的可能性越高。
        public let confidence: Float
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case confidence = "Confidence"
        }
    }
    
    /// 百科词条信息
    public struct LemmaInfo: TCOutputModel {
        /// 词条
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lemmaTitle: String?
        
        /// 词条描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lemmaAbstract: String?
        
        /// 标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tag: String?
        
        enum CodingKeys: String, CodingKey {
            case lemmaTitle = "LemmaTitle"
            case lemmaAbstract = "LemmaAbstract"
            case tag = "Tag"
        }
    }
    
    /// 检测到的主体在图片中的矩形框位置（四个顶点坐标）
    public struct Location: TCOutputModel {
        /// 位置矩形框的左上角横坐标
        public let xMin: Int64
        
        /// 位置矩形框的左上角纵坐标
        public let yMin: Int64
        
        /// 位置矩形框的右下角横坐标
        public let xMax: Int64
        
        /// 位置矩形框的右下角纵坐标
        public let yMax: Int64
        
        enum CodingKeys: String, CodingKey {
            case xMin = "XMin"
            case yMin = "YMin"
            case xMax = "XMax"
            case yMax = "YMax"
        }
    }
    
    /// 图像的主体信息。
    public struct ObjectInfo: TCOutputModel {
        /// 图像主体区域。
        public let box: Box
        
        /// 主体类别ID。
        public let categoryId: Int64
        
        /// 整张图颜色信息。
        public let colors: [ColorInfo]
        
        /// 属性信息。
        public let attributes: [Attribute]
        
        /// 图像的所有主体区域，置信度，以及主体区域类别ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let allBox: [Box]?
        
        enum CodingKeys: String, CodingKey {
            case box = "Box"
            case categoryId = "CategoryId"
            case colors = "Colors"
            case attributes = "Attributes"
            case allBox = "AllBox"
        }
    }
    
    /// 宠物具体信息
    public struct Pet: TCOutputModel {
        /// 识别出的宠物类型（猫或者狗，暂不支持识别猫狗品种）。
        public let name: String
        
        /// 识别服务给识别目标打出的置信度，范围在0-100之间。值越高，表示目标为相应结果的可能性越高。
        public let score: Int64
        
        /// 识别目标在图片中的坐标。
        public let location: Rect
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case score = "Score"
            case location = "Location"
        }
    }
    
    /// 检测到的单个商品结构体
    public struct Product: TCOutputModel {
        /// 图片中商品的三级分类识别结果，选取所有三级分类中的置信度最大者
        public let name: String
        
        /// 三级商品分类对应的一级分类和二级分类，两级之间用“-”（中划线）隔开，例如商品名称是“硬盘”，那么Parents输出为“电脑、办公-电脑配件”
        public let parents: String
        
        /// 算法对于Name的置信度，0-100之间，值越高，表示对于Name越确定
        public let confidence: Int64
        
        /// 商品坐标X轴的最小值
        public let xMin: Int64
        
        /// 商品坐标Y轴的最小值
        public let yMin: Int64
        
        /// 商品坐标X轴的最大值
        public let xMax: Int64
        
        /// 商品坐标Y轴的最大值
        public let yMax: Int64
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case parents = "Parents"
            case confidence = "Confidence"
            case xMin = "XMin"
            case yMin = "YMin"
            case xMax = "XMax"
            case yMax = "YMax"
        }
    }
    
    /// 图像识别出的商品的详细信息。 
    /// 当图像中检测到多个物品时，会对显著性最高的物品进行识别。
    public struct ProductInfo: TCOutputModel {
        /// 1表示找到同款商品，以下字段为同款商品信息； 
        /// 0表示未找到同款商品， 具体商品信息为空（参考价格、名称、品牌等），仅提供商品类目和参考图片（商品库中找到的最相似图片，供参考）。  
        /// 是否找到同款的判断依据为Score分值，分值越大则同款的可能性越大。
        public let findSKU: Int64
        
        /// 本商品在图片中的坐标，表示为矩形框的四个顶点坐标。
        public let location: Location
        
        /// 商品名称
        public let name: String
        
        /// 商品品牌
        public let brand: String
        
        /// 参考价格，综合多个信息源，仅供参考。
        public let price: String
        
        /// 识别结果的商品类目。 
        /// 包含：鞋、图书音像、箱包、美妆个护、服饰、家电数码、玩具乐器、食品饮料、珠宝、家居家装、药品、酒水、绿植园艺、其他商品、非商品等。 
        /// 当类别为“非商品”时，除Location、Score和本字段之外的商品信息为空。
        public let productCategory: String
        
        /// 输入图片中的主体物品和输出结果的相似度。分值越大，输出结果与输入图片是同款的可能性越高。
        public let score: Float
        
        /// 搜索到的商品配图URL。
        public let image: String
        
        /// 百科词条列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lemmaInfoList: [LemmaInfo]?
        
        enum CodingKeys: String, CodingKey {
            case findSKU = "FindSKU"
            case location = "Location"
            case name = "Name"
            case brand = "Brand"
            case price = "Price"
            case productCategory = "ProductCategory"
            case score = "Score"
            case image = "Image"
            case lemmaInfoList = "LemmaInfoList"
        }
    }
    
    /// 具体坐标，可用来判断边界
    public struct Rect: TCOutputModel {
        /// x轴坐标
        public let x: Int64
        
        /// y轴坐标
        public let y: Int64
        
        /// (x,y)坐标距离长度
        public let width: Int64
        
        /// (x,y)坐标距离高度
        public let height: Int64
        
        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case width = "Width"
            case height = "Height"
        }
    }
    
    /// 检测到的图片中的商品位置和品类预测。 
    /// 当图片中存在多个商品时，输出多组坐标，按照__显著性__排序（综合考虑面积、是否在中心、检测算法置信度）。 
    /// 最多可以输出__3组__检测结果。
    public struct RegionDetected: TCOutputModel {
        /// 商品的品类预测结果。 
        /// 包含：鞋、图书音像、箱包、美妆个护、服饰、家电数码、玩具乐器、食品饮料、珠宝、家居家装、药品、酒水、绿植园艺、其他商品、非商品等。
        public let category: String
        
        /// 商品品类预测的置信度
        public let categoryScore: Float
        
        /// 检测到的主体在图片中的坐标，表示为矩形框的四个顶点坐标
        public let location: Location
        
        enum CodingKeys: String, CodingKey {
            case category = "Category"
            case categoryScore = "CategoryScore"
            case location = "Location"
        }
    }
}