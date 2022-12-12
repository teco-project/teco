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

extension Dcdb {
    /// DescribeFlow请求参数结构体
    public struct DescribeFlowRequest: TCRequestModel {
        /// 异步请求接口返回的任务流程号。
        public let flowId: Int64
        
        public init (flowId: Int64) {
            self.flowId = flowId
        }
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
        }
    }
    
    /// DescribeFlow返回参数结构体
    public struct DescribeFlowResponse: TCResponseModel {
        /// 流程状态，0：成功，1：失败，2：运行中
        public let status: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
    
    /// 查询流程状态
    ///
    /// 本接口（DescribeFlow）用于查询流程状态
    @inlinable
    public func describeFlow(_ input: DescribeFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFlowResponse > {
        self.client.execute(action: "DescribeFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询流程状态
    ///
    /// 本接口（DescribeFlow）用于查询流程状态
    @inlinable
    public func describeFlow(_ input: DescribeFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowResponse {
        try await self.client.execute(action: "DescribeFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
