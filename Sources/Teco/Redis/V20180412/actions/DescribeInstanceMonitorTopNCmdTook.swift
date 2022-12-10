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

extension Redis {
    /// 查询实例CPU耗时
    ///
    /// 查询实例CPU耗时
    @inlinable
    public func describeInstanceMonitorTopNCmdTook(_ input: DescribeInstanceMonitorTopNCmdTookRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceMonitorTopNCmdTookResponse > {
        self.client.execute(action: "DescribeInstanceMonitorTopNCmdTook", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例CPU耗时
    ///
    /// 查询实例CPU耗时
    @inlinable
    public func describeInstanceMonitorTopNCmdTook(_ input: DescribeInstanceMonitorTopNCmdTookRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceMonitorTopNCmdTookResponse {
        try await self.client.execute(action: "DescribeInstanceMonitorTopNCmdTook", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInstanceMonitorTopNCmdTook请求参数结构体
    public struct DescribeInstanceMonitorTopNCmdTookRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 时间范围：1——实时，2——近30分钟，3——近6小时，4——近24小时
        public let spanType: Int64
        
        public init (instanceId: String, spanType: Int64) {
            self.instanceId = instanceId
            self.spanType = spanType
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case spanType = "SpanType"
        }
    }
    
    /// DescribeInstanceMonitorTopNCmdTook返回参数结构体
    public struct DescribeInstanceMonitorTopNCmdTookResponse: TCResponseModel {
        /// 耗时详细信息
        public let data: [CommandTake]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}