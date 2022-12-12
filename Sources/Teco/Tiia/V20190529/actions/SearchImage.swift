//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tiia {
    /// SearchImage请求参数结构体
    public struct SearchImageRequest: TCRequestModel {
        /// 图库名称。
        public let groupId: String
        
        /// 图片的 Url 。
        /// ImageUrl和ImageBase64必须提供一个，如果都提供，只使用ImageUrl。
        /// 图片限制：
        /// • 图片格式：支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        /// • 图片大小：对应图片 base64 编码后大小不可超过5M。图片分辨率不超过4096\*4096。
        /// • 如果在商品图像搜索中开启主体识别，分辨率不超过2000\*2000，图片长宽比小于10。
        /// 建议：
        /// • 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的Url速度和稳定性可能受一定影响。
        public let imageUrl: String?
        
        /// 图片 base64 数据。
        /// ImageUrl和ImageBase64必须提供一个，如果都提供，只使用ImageUrl。
        /// 图片限制：
        /// • 图片格式：支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        /// • 图片大小：base64 编码后大小不可超过5M。图片分辨率不超过4096\*4096。
        /// • 如果在商品图像搜索中开启主体识别，分辨率不超过2000\*2000，图片长宽比小于10。
        public let imageBase64: String?
        
        /// 返回结果的数量，默认值为10，最大值为100。
        /// 按照相似度分数由高到低排序。
        /// **<font color=#1E90FF>注意：服务类型为相似图像搜索时返回数量限制为1，即返回top1的结果。</font>**
        public let limit: Int64?
        
        /// 返回结果的起始序号，默认值为0。
        public let offset: Int64?
        
        /// 匹配阈值。
        /// 只有图片相似度分数超过匹配阈值的结果才会返回。
        /// 当MatchThreshold为0（默认值）时，各服务类型将按照以下默认的匹配阈值进行结果过滤：
        /// • 相同图像搜索：50。
        /// • 商品图像搜索：28。
        /// • 相似图像搜索：56。
        /// 建议：
        /// 可以手动调整MatchThreshold值来控制输出结果的范围。如果发现无检索结果，可能是因为图片相似度较低导致检索结果被匹配阈值过滤，建议调整为较低的阈值后再次尝试检索。
        public let matchThreshold: Int64?
        
        /// 标签过滤条件。
        /// 针对创建图片时提交的Tags信息进行条件过滤。支持>、>=、 <、 <=、=，!=，多个条件之间支持AND和OR进行连接。
        public let filter: String?
        
        /// 图像主体区域。
        /// 若设置主体区域，提取指定的区域进行检索。
        public let imageRect: ImageRect?
        
        /// 是否需要启用主体识别，默认为**TRUE** 。
        /// • 为**TRUE**时，启用主体识别，返回主体信息。若没有指定**ImageRect**，自动提取最大面积主体进行检索并进行主体识别。主体识别结果可在**Response中**获取。
        /// • 为**FALSE**时，不启用主体识别，不返回主体信息。若没有指定**ImageRect**，以整张图检索图片。
        /// **<font color=#1E90FF>注意：仅服务类型为商品图像搜索时才生效。</font>**
        public let enableDetect: Bool?
        
        /// 图像类目ID。
        /// 若设置类目ID，提取以下类目的主体进行检索。
        /// 类目取值说明：
        /// 0：上衣。
        /// 1：裙装。
        /// 2：下装。
        /// 3：包。
        /// 4：鞋。
        /// 5：配饰。
        /// **<font color=#1E90FF>注意：仅服务类型为商品图像搜索时才生效。</font>**
        public let categoryId: Int64?
        
        public init (groupId: String, imageUrl: String? = nil, imageBase64: String? = nil, limit: Int64? = nil, offset: Int64? = nil, matchThreshold: Int64? = nil, filter: String? = nil, imageRect: ImageRect? = nil, enableDetect: Bool? = nil, categoryId: Int64? = nil) {
            self.groupId = groupId
            self.imageUrl = imageUrl
            self.imageBase64 = imageBase64
            self.limit = limit
            self.offset = offset
            self.matchThreshold = matchThreshold
            self.filter = filter
            self.imageRect = imageRect
            self.enableDetect = enableDetect
            self.categoryId = categoryId
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case imageUrl = "ImageUrl"
            case imageBase64 = "ImageBase64"
            case limit = "Limit"
            case offset = "Offset"
            case matchThreshold = "MatchThreshold"
            case filter = "Filter"
            case imageRect = "ImageRect"
            case enableDetect = "EnableDetect"
            case categoryId = "CategoryId"
        }
    }
    
    /// SearchImage返回参数结构体
    public struct SearchImageResponse: TCResponseModel {
        /// 返回结果数量。
        public let count: Int64
        
        /// 图片信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageInfos: [ImageInfo]?
        
        /// 输入图的主体信息。
        /// 若启用主体识别且在请求中指定了类目ID或主体区域，以指定的主体为准。若启用主体识别且没有指定，以最大面积主体为准。
        /// **<font color=#1E90FF>注意：仅服务类型为商品图像搜索时才生效。</font>**
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let object: ObjectInfo?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case imageInfos = "ImageInfos"
            case object = "Object"
            case requestId = "RequestId"
        }
    }
    
    /// 检索图片
    ///
    /// 本接口用于对一张图片，在指定图片库中检索出与之相似的图片列表。
    @inlinable
    public func searchImage(_ input: SearchImageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SearchImageResponse > {
        self.client.execute(action: "SearchImage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 检索图片
    ///
    /// 本接口用于对一张图片，在指定图片库中检索出与之相似的图片列表。
    @inlinable
    public func searchImage(_ input: SearchImageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchImageResponse {
        try await self.client.execute(action: "SearchImage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
