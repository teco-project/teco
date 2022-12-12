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

extension Mps {
    /// ExecuteFunction请求参数结构体
    public struct ExecuteFunctionRequest: TCRequestModel {
        /// 调用后端接口名称。
        public let functionName: String
        
        /// 接口参数，具体参数格式调用时与后端协调。
        public let functionArg: String
        
        public init (functionName: String, functionArg: String) {
            self.functionName = functionName
            self.functionArg = functionArg
        }
        
        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case functionArg = "FunctionArg"
        }
    }
    
    /// ExecuteFunction返回参数结构体
    public struct ExecuteFunctionResponse: TCResponseModel {
        /// 处理结果打包后的字符串，具体与后台一同协调。
        public let result: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 执行定制 API
    ///
    /// 本接口仅用于定制开发的特殊场景，除非云媒体处理客服人员主动告知您需要使用本接口，其它情况请勿调用。
    @inlinable
    public func executeFunction(_ input: ExecuteFunctionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ExecuteFunctionResponse > {
        self.client.execute(action: "ExecuteFunction", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 执行定制 API
    ///
    /// 本接口仅用于定制开发的特殊场景，除非云媒体处理客服人员主动告知您需要使用本接口，其它情况请勿调用。
    @inlinable
    public func executeFunction(_ input: ExecuteFunctionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteFunctionResponse {
        try await self.client.execute(action: "ExecuteFunction", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
