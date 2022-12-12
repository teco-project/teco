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

extension Lighthouse {
    /// DescribeResetInstanceBlueprints请求参数结构体
    public struct DescribeResetInstanceBlueprintsRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let offset: Int64?
        
        /// 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let limit: Int64?
        
        /// 过滤器列表。
        /// <li>blueprint-id</li>按照【镜像 ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <li>blueprint-type</li>按照【镜像类型】进行过滤。
        /// 取值： APP_OS（应用镜像 ）；PURE_OS（ 系统镜像）；PRIVATE（自定义镜像）。
        /// 类型：String
        /// 必选：否
        /// <li>platform-type</li>按照【镜像平台类型】进行过滤。
        /// 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）。
        /// 类型：String
        /// 必选：否
        /// <li>blueprint-name</li>按照【镜像名称】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <li>blueprint-state</li>按照【镜像状态】进行过滤。
        /// 类型：String
        /// 必选：否
        /// 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 BlueprintIds 和 Filters 。
        public let filters: [Filter]?
        
        public init (instanceId: String, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }
    
    /// DescribeResetInstanceBlueprints返回参数结构体
    public struct DescribeResetInstanceBlueprintsResponse: TCResponseModel {
        /// 符合条件的镜像数量。
        public let totalCount: Int64
        
        /// 镜像重置信息列表
        public let resetInstanceBlueprintSet: [ResetInstanceBlueprint]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case resetInstanceBlueprintSet = "ResetInstanceBlueprintSet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询重置实例的镜像信息
    ///
    /// 本接口（DescribeResetInstanceBlueprints）查询重置实例的镜像信息。
    @inlinable
    public func describeResetInstanceBlueprints(_ input: DescribeResetInstanceBlueprintsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeResetInstanceBlueprintsResponse > {
        self.client.execute(action: "DescribeResetInstanceBlueprints", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询重置实例的镜像信息
    ///
    /// 本接口（DescribeResetInstanceBlueprints）查询重置实例的镜像信息。
    @inlinable
    public func describeResetInstanceBlueprints(_ input: DescribeResetInstanceBlueprintsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResetInstanceBlueprintsResponse {
        try await self.client.execute(action: "DescribeResetInstanceBlueprints", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
