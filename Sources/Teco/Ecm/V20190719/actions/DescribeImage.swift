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

extension Ecm {
    /// DescribeImage请求参数结构体
    public struct DescribeImageRequest: TCRequestModel {
        /// 过滤条件，每次请求的Filters的上限为10，详细的过滤条件如下：
        /// image-id - String - 是否必填： 否 - （过滤条件）按照镜像ID进行过滤
        /// image-type - String - 是否必填： 否 - （过滤条件）按照镜像类型进行过滤。取值范围：
        /// PRIVATE_IMAGE: 私有镜像 (本帐户创建的镜像) 
        /// PUBLIC_IMAGE: 公共镜像 (腾讯云官方镜像)
        /// instance-type -String - 是否必填: 否 - (过滤条件) 按机型过滤支持的镜像
        /// image-name - String - 是否必填：否 - (过滤条件) 按镜像的名称模糊匹配，只能提供一个值
        /// image-os - String - 是否必填：否 - (过滤条件) 按镜像系统的名称模糊匹配，只能提供一个值
        public let filters: [Filter]?
        
        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        public let offset: Int64?
        
        /// 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        public let limit: Int64?
        
        public init (filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeImage返回参数结构体
    public struct DescribeImageResponse: TCResponseModel {
        /// 镜像总数
        public let totalCount: Int64
        
        /// 镜像数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageSet: [Image]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case imageSet = "ImageSet"
            case requestId = "RequestId"
        }
    }
    
    /// 展示镜像列表
    @inlinable
    public func describeImage(_ input: DescribeImageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageResponse > {
        self.client.execute(action: "DescribeImage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 展示镜像列表
    @inlinable
    public func describeImage(_ input: DescribeImageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageResponse {
        try await self.client.execute(action: "DescribeImage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
