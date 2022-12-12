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

extension Vod {
    /// DescribeAIRecognitionTemplates请求参数结构体
    public struct DescribeAIRecognitionTemplatesRequest: TCRequestModel {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        /// 音视频内容识别模板唯一标识过滤条件，数组长度限制：100。
        public let definitions: [Int64]?
        
        /// 分页偏移量，默认值：0。
        public let offset: UInt64?
        
        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?
        
        public init (subAppId: UInt64? = nil, definitions: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.subAppId = subAppId
            self.definitions = definitions
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case definitions = "Definitions"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeAIRecognitionTemplates返回参数结构体
    public struct DescribeAIRecognitionTemplatesResponse: TCResponseModel {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64
        
        /// 音视频内容识别模板详情列表。
        public let aiRecognitionTemplateSet: [AIRecognitionTemplateItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case aiRecognitionTemplateSet = "AIRecognitionTemplateSet"
            case requestId = "RequestId"
        }
    }
    
    /// 获取音视频内容识别模板列表
    ///
    /// 根据音视频内容识别模板唯一标识，获取音视频内容识别模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容识别模板及[系统预置音视频内容识别模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E8.AF.86.E5.88.AB.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeAIRecognitionTemplates(_ input: DescribeAIRecognitionTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAIRecognitionTemplatesResponse > {
        self.client.execute(action: "DescribeAIRecognitionTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取音视频内容识别模板列表
    ///
    /// 根据音视频内容识别模板唯一标识，获取音视频内容识别模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容识别模板及[系统预置音视频内容识别模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E8.AF.86.E5.88.AB.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeAIRecognitionTemplates(_ input: DescribeAIRecognitionTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIRecognitionTemplatesResponse {
        try await self.client.execute(action: "DescribeAIRecognitionTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
