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

extension Asw {
    /// StartExecution请求参数结构体
    public struct StartExecutionRequest: TCRequestModel {
        /// 状态机资源名
        public let stateMachineResourceName: String
        
        /// 输入参数，内容为JsonObject，长度不大于524288字符。
        public let input: String?
        
        /// 本次执行名。如果不填，系统会自动生成。如果填，应保证状态机下唯一
        public let name: String?
        
        public init (stateMachineResourceName: String, input: String? = nil, name: String? = nil) {
            self.stateMachineResourceName = stateMachineResourceName
            self.input = input
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case stateMachineResourceName = "StateMachineResourceName"
            case input = "Input"
            case name = "Name"
        }
    }
    
    /// StartExecution返回参数结构体
    public struct StartExecutionResponse: TCResponseModel {
        /// 执行资源名
        public let executionResourceName: String
        
        /// 执行开始时间
        public let startDate: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case executionResourceName = "ExecutionResourceName"
            case startDate = "StartDate"
            case requestId = "RequestId"
        }
    }
    
    /// 启动执行
    ///
    /// 为指定的状态机启动一次执行
    @inlinable
    public func startExecution(_ input: StartExecutionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StartExecutionResponse > {
        self.client.execute(action: "StartExecution", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 启动执行
    ///
    /// 为指定的状态机启动一次执行
    @inlinable
    public func startExecution(_ input: StartExecutionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartExecutionResponse {
        try await self.client.execute(action: "StartExecution", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
