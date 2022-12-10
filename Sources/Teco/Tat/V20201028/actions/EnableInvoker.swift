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

extension Tat {
    /// 启用执行器
    ///
    /// 此接口用于启用执行器。
    @inlinable
    public func enableInvoker(_ input: EnableInvokerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EnableInvokerResponse > {
        self.client.execute(action: "EnableInvoker", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 启用执行器
    ///
    /// 此接口用于启用执行器。
    @inlinable
    public func enableInvoker(_ input: EnableInvokerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableInvokerResponse {
        try await self.client.execute(action: "EnableInvoker", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// EnableInvoker请求参数结构体
    public struct EnableInvokerRequest: TCRequestModel {
        /// 待启用的执行器ID。
        public let invokerId: String
        
        public init (invokerId: String) {
            self.invokerId = invokerId
        }
        
        enum CodingKeys: String, CodingKey {
            case invokerId = "InvokerId"
        }
    }
    
    /// EnableInvoker返回参数结构体
    public struct EnableInvokerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}