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

extension Vod {
    /// ModifySubAppIdInfo请求参数结构体
    public struct ModifySubAppIdInfoRequest: TCRequestModel {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64
        
        /// 子应用名称，长度限制：40个字符。
        public let name: String?
        
        /// 子应用简介，长度限制： 300个字符。
        public let description: String?
        
        public init (subAppId: UInt64, name: String? = nil, description: String? = nil) {
            self.subAppId = subAppId
            self.name = name
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case name = "Name"
            case description = "Description"
        }
    }
    
    /// ModifySubAppIdInfo返回参数结构体
    public struct ModifySubAppIdInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改子应用信息
    ///
    /// 该接口用于修改子应用信息，但不允许修改主应用信息。
    @inlinable
    public func modifySubAppIdInfo(_ input: ModifySubAppIdInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySubAppIdInfoResponse > {
        self.client.execute(action: "ModifySubAppIdInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改子应用信息
    ///
    /// 该接口用于修改子应用信息，但不允许修改主应用信息。
    @inlinable
    public func modifySubAppIdInfo(_ input: ModifySubAppIdInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubAppIdInfoResponse {
        try await self.client.execute(action: "ModifySubAppIdInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
