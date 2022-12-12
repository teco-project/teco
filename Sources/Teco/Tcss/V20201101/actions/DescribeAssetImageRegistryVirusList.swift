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

extension Tcss {
    /// DescribeAssetImageRegistryVirusList请求参数结构体
    public struct DescribeAssetImageRegistryVirusListRequest: TCRequestModel {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>Level- String - 是否必填：否 - 漏洞级别筛选，</li>
        /// <li>Name - String - 是否必填：否 - 漏洞名称</li>
        public let filters: [AssetFilters]?
        
        /// 镜像信息
        public let imageInfo: ImageInfo?
        
        /// 镜像标识Id
        public let id: UInt64?
        
        public init (limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, imageInfo: ImageInfo? = nil, id: UInt64? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.imageInfo = imageInfo
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case imageInfo = "ImageInfo"
            case id = "Id"
        }
    }
    
    /// DescribeAssetImageRegistryVirusList返回参数结构体
    public struct DescribeAssetImageRegistryVirusListResponse: TCResponseModel {
        /// 镜像漏洞列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [ImageVirus]?
        
        /// 总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 镜像仓库查询木马病毒列表
    @inlinable
    public func describeAssetImageRegistryVirusList(_ input: DescribeAssetImageRegistryVirusListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetImageRegistryVirusListResponse > {
        self.client.execute(action: "DescribeAssetImageRegistryVirusList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 镜像仓库查询木马病毒列表
    @inlinable
    public func describeAssetImageRegistryVirusList(_ input: DescribeAssetImageRegistryVirusListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryVirusListResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryVirusList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
