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
    /// 查询用户镜像仓库下的项目名称列表
    @inlinable
    public func describeImageRegistryNamespaceList(_ input: DescribeImageRegistryNamespaceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageRegistryNamespaceListResponse > {
        self.client.execute(action: "DescribeImageRegistryNamespaceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询用户镜像仓库下的项目名称列表
    @inlinable
    public func describeImageRegistryNamespaceList(_ input: DescribeImageRegistryNamespaceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRegistryNamespaceListResponse {
        try await self.client.execute(action: "DescribeImageRegistryNamespaceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeImageRegistryNamespaceList请求参数结构体
    public struct DescribeImageRegistryNamespaceListRequest: TCRequestModel {
        /// 本次查询的起始偏移量，默认为0。
        public let offset: UInt64?
        
        /// 本次查询的数据量，默认为10，最大值为100。
        public let limit: UInt64?
        
        /// 查询的过滤条件。Name字段可取值"Namespace"。
        public let filters: [AssetFilters]?
        
        public init (offset: UInt64?, limit: UInt64?, filters: [AssetFilters]?) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }
    
    /// DescribeImageRegistryNamespaceList返回参数结构体
    public struct DescribeImageRegistryNamespaceListResponse: TCResponseModel {
        /// 可返回的项目空间的总量。
        public let totalCount: UInt64
        
        /// 返回的项目空间列表
        public let namespaceList: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case namespaceList = "NamespaceList"
            case requestId = "RequestId"
        }
    }
}
