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

extension Teo {
    /// CreateLogSet请求参数结构体
    public struct CreateLogSetRequest: TCRequestModel {
        /// 日志集名称。
        public let logSetName: String
        
        /// 日志集归属的地域。
        public let logSetRegion: String
        
        public init (logSetName: String, logSetRegion: String) {
            self.logSetName = logSetName
            self.logSetRegion = logSetRegion
        }
        
        enum CodingKeys: String, CodingKey {
            case logSetName = "LogSetName"
            case logSetRegion = "LogSetRegion"
        }
    }
    
    /// CreateLogSet返回参数结构体
    public struct CreateLogSetResponse: TCResponseModel {
        /// 创建成功的日志集ID。
        public let logSetId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case logSetId = "LogSetId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建日志集
    ///
    /// 本接口（CreateClsLog）用于创建CLS日志集。
    @inlinable
    public func createLogSet(_ input: CreateLogSetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateLogSetResponse > {
        self.client.execute(action: "CreateLogSet", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建日志集
    ///
    /// 本接口（CreateClsLog）用于创建CLS日志集。
    @inlinable
    public func createLogSet(_ input: CreateLogSetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLogSetResponse {
        try await self.client.execute(action: "CreateLogSet", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
