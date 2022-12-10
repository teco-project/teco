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
    /// 查询镜像实例信息
    ///
    /// 本接口（DescribeBlueprintInstances）用于查询镜像实例信息。
    @inlinable
    public func describeBlueprintInstances(_ input: DescribeBlueprintInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBlueprintInstancesResponse > {
        self.client.execute(action: "DescribeBlueprintInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询镜像实例信息
    ///
    /// 本接口（DescribeBlueprintInstances）用于查询镜像实例信息。
    @inlinable
    public func describeBlueprintInstances(_ input: DescribeBlueprintInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlueprintInstancesResponse {
        try await self.client.execute(action: "DescribeBlueprintInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBlueprintInstances请求参数结构体
    public struct DescribeBlueprintInstancesRequest: TCRequestModel {
        /// 实例 ID 列表，当前最多支持 1 个。
        public let instanceIds: [String]
        
        public init (instanceIds: [String]) {
            self.instanceIds = instanceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }
    
    /// DescribeBlueprintInstances返回参数结构体
    public struct DescribeBlueprintInstancesResponse: TCResponseModel {
        /// 符合条件的镜像实例数量。
        public let totalCount: Int64
        
        /// 镜像实例列表信息。
        public let blueprintInstanceSet: [BlueprintInstance]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case blueprintInstanceSet = "BlueprintInstanceSet"
            case requestId = "RequestId"
        }
    }
}
