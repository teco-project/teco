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

extension Tem {
    /// 销毁环境
    ///
    /// 销毁环境
    @inlinable
    public func destroyEnvironment(_ input: DestroyEnvironmentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DestroyEnvironmentResponse > {
        self.client.execute(action: "DestroyEnvironment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 销毁环境
    ///
    /// 销毁环境
    @inlinable
    public func destroyEnvironment(_ input: DestroyEnvironmentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyEnvironmentResponse {
        try await self.client.execute(action: "DestroyEnvironment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DestroyEnvironment请求参数结构体
    public struct DestroyEnvironmentRequest: TCRequestModel {
        /// 命名空间ID
        public let environmentId: String
        
        /// Namespace
        public let sourceChannel: Int64?
        
        public init (environmentId: String, sourceChannel: Int64?) {
            self.environmentId = environmentId
            self.sourceChannel = sourceChannel
        }
        
        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case sourceChannel = "SourceChannel"
        }
    }
    
    /// DestroyEnvironment返回参数结构体
    public struct DestroyEnvironmentResponse: TCResponseModel {
        /// 返回结果
        public let result: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}