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

extension Tdid {
    /// 注册为权威机构
    ///
    /// 注册为权威机构
    @inlinable
    public func registerIssuer(_ input: RegisterIssuerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RegisterIssuerResponse > {
        self.client.execute(action: "RegisterIssuer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 注册为权威机构
    ///
    /// 注册为权威机构
    @inlinable
    public func registerIssuer(_ input: RegisterIssuerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterIssuerResponse {
        try await self.client.execute(action: "RegisterIssuer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RegisterIssuer请求参数结构体
    public struct RegisterIssuerRequest: TCRequestModel {
        /// tdid
        public let did: String
        
        /// 权威机构名称
        public let name: String
        
        /// 备注
        public let description: String
        
        public init (did: String, name: String, description: String) {
            self.did = did
            self.name = name
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case did = "Did"
            case name = "Name"
            case description = "Description"
        }
    }
    
    /// RegisterIssuer返回参数结构体
    public struct RegisterIssuerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}