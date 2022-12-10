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

extension Gse {
    /// 查询游戏服务器舰队容量配置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeFleetCapacity）用于查询服务部署容量配置。
    @inlinable
    public func describeFleetCapacity(_ input: DescribeFleetCapacityRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFleetCapacityResponse > {
        self.client.execute(action: "DescribeFleetCapacity", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询游戏服务器舰队容量配置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeFleetCapacity）用于查询服务部署容量配置。
    @inlinable
    public func describeFleetCapacity(_ input: DescribeFleetCapacityRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetCapacityResponse {
        try await self.client.execute(action: "DescribeFleetCapacity", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeFleetCapacity请求参数结构体
    public struct DescribeFleetCapacityRequest: TCRequestModel {
        /// 服务器舰队ID列表
        public let fleetIds: [String]
        
        /// 结果返回最大数量，最大值 100
        public let limit: UInt64?
        
        /// 返回结果偏移，最小值 0
        public let offset: UInt64?
        
        public init (fleetIds: [String], limit: UInt64?, offset: UInt64?) {
            self.fleetIds = fleetIds
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case fleetIds = "FleetIds"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeFleetCapacity返回参数结构体
    public struct DescribeFleetCapacityResponse: TCResponseModel {
        /// 服务器舰队的容量配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fleetCapacity: [FleetCapacity]?
        
        /// 结果返回最大数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case fleetCapacity = "FleetCapacity"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}