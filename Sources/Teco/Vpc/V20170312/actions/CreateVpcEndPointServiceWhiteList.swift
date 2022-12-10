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

extension Vpc {
    /// 创建终端服务白名单
    ///
    /// 创建终端服务白名单。
    @inlinable
    public func createVpcEndPointServiceWhiteList(_ input: CreateVpcEndPointServiceWhiteListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateVpcEndPointServiceWhiteListResponse > {
        self.client.execute(action: "CreateVpcEndPointServiceWhiteList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建终端服务白名单
    ///
    /// 创建终端服务白名单。
    @inlinable
    public func createVpcEndPointServiceWhiteList(_ input: CreateVpcEndPointServiceWhiteListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcEndPointServiceWhiteListResponse {
        try await self.client.execute(action: "CreateVpcEndPointServiceWhiteList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateVpcEndPointServiceWhiteList请求参数结构体
    public struct CreateVpcEndPointServiceWhiteListRequest: TCRequestModel {
        /// UIN。
        public let userUin: String
        
        /// 终端节点服务ID。
        public let endPointServiceId: String
        
        /// 白名单描述。
        public let description: String?
        
        public init (userUin: String, endPointServiceId: String, description: String?) {
            self.userUin = userUin
            self.endPointServiceId = endPointServiceId
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case userUin = "UserUin"
            case endPointServiceId = "EndPointServiceId"
            case description = "Description"
        }
    }
    
    /// CreateVpcEndPointServiceWhiteList返回参数结构体
    public struct CreateVpcEndPointServiceWhiteListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}