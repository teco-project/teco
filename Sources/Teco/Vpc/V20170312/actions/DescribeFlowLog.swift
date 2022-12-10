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

extension Vpc {
    /// 查询流日志实例信息
    ///
    /// 本接口（DescribeFlowLog）用于查询流日志实例信息
    @inlinable
    public func describeFlowLog(_ input: DescribeFlowLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFlowLogResponse > {
        self.client.execute(action: "DescribeFlowLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询流日志实例信息
    ///
    /// 本接口（DescribeFlowLog）用于查询流日志实例信息
    @inlinable
    public func describeFlowLog(_ input: DescribeFlowLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowLogResponse {
        try await self.client.execute(action: "DescribeFlowLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeFlowLog请求参数结构体
    public struct DescribeFlowLogRequest: TCRequestModel {
        /// 私用网络ID或者统一ID，建议使用统一ID
        public let vpcId: String
        
        /// 流日志唯一ID
        public let flowLogId: String
        
        public init (vpcId: String, flowLogId: String) {
            self.vpcId = vpcId
            self.flowLogId = flowLogId
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case flowLogId = "FlowLogId"
        }
    }
    
    /// DescribeFlowLog返回参数结构体
    public struct DescribeFlowLogResponse: TCResponseModel {
        /// 流日志信息
        public let flowLog: [FlowLog]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowLog = "FlowLog"
            case requestId = "RequestId"
        }
    }
}
