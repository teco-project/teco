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

extension Scf {
    /// 更新函数异步重试配置
    ///
    /// 更新函数的异步重试配置，包括重试次数和消息保留时间
    @inlinable
    public func updateFunctionEventInvokeConfig(_ input: UpdateFunctionEventInvokeConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateFunctionEventInvokeConfigResponse > {
        self.client.execute(action: "UpdateFunctionEventInvokeConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新函数异步重试配置
    ///
    /// 更新函数的异步重试配置，包括重试次数和消息保留时间
    @inlinable
    public func updateFunctionEventInvokeConfig(_ input: UpdateFunctionEventInvokeConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFunctionEventInvokeConfigResponse {
        try await self.client.execute(action: "UpdateFunctionEventInvokeConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateFunctionEventInvokeConfig请求参数结构体
    public struct UpdateFunctionEventInvokeConfigRequest: TCRequestModel {
        /// 异步重试配置信息
        public let asyncTriggerConfig: AsyncTriggerConfig
        
        /// 函数名称
        public let functionName: String
        
        /// 函数所属命名空间，默认为default
        public let namespace: String?
        
        public init (asyncTriggerConfig: AsyncTriggerConfig, functionName: String, namespace: String?) {
            self.asyncTriggerConfig = asyncTriggerConfig
            self.functionName = functionName
            self.namespace = namespace
        }
        
        enum CodingKeys: String, CodingKey {
            case asyncTriggerConfig = "AsyncTriggerConfig"
            case functionName = "FunctionName"
            case namespace = "Namespace"
        }
    }
    
    /// UpdateFunctionEventInvokeConfig返回参数结构体
    public struct UpdateFunctionEventInvokeConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}