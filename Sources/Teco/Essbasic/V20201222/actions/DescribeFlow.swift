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

extension Essbasic {
    /// DescribeFlow请求参数结构体
    public struct DescribeFlowRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller
        
        /// 需要查询的流程ID
        public let flowId: String
        
        public init (caller: Caller, flowId: String) {
            self.caller = caller
            self.flowId = flowId
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case flowId = "FlowId"
        }
    }
    
    /// DescribeFlow返回参数结构体
    public struct DescribeFlowResponse: TCResponseModel {
        /// 流程创建者信息
        public let creator: Caller
        
        /// 流程编号
        public let flowId: String
        
        /// 流程名称
        public let flowName: String
        
        /// 流程描述
        public let flowDescription: String
        
        /// 流程的类型: ”劳务合同“,”租赁合同“,”销售合同“,”其他“
        public let flowType: String
        
        /// 流程状态：
        /// 0-创建；
        /// 1-签署中；
        /// 2-拒签；
        /// 3-撤回；
        /// 4-签完存档完成；
        /// 5-已过期；
        /// 6-已销毁
        /// 7-签署完成未归档
        public let flowStatus: Int64
        
        /// 流程创建时间
        public let createdOn: Int64
        
        /// 流程完成时间
        public let updatedOn: Int64
        
        /// 流程截止日期
        public let deadline: Int64
        
        /// 回调地址
        public let callbackUrl: String
        
        /// 流程中止原因
        public let flowMessage: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case creator = "Creator"
            case flowId = "FlowId"
            case flowName = "FlowName"
            case flowDescription = "FlowDescription"
            case flowType = "FlowType"
            case flowStatus = "FlowStatus"
            case createdOn = "CreatedOn"
            case updatedOn = "UpdatedOn"
            case deadline = "Deadline"
            case callbackUrl = "CallbackUrl"
            case flowMessage = "FlowMessage"
            case requestId = "RequestId"
        }
    }
    
    /// 查询流程信息
    ///
    /// 通过此接口（DescribeFlow）可查询签署流程的详细信息。
    @inlinable
    public func describeFlow(_ input: DescribeFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFlowResponse > {
        self.client.execute(action: "DescribeFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询流程信息
    ///
    /// 通过此接口（DescribeFlow）可查询签署流程的详细信息。
    @inlinable
    public func describeFlow(_ input: DescribeFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowResponse {
        try await self.client.execute(action: "DescribeFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
