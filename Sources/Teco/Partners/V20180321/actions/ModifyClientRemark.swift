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

extension Partners {
    /// ModifyClientRemark请求参数结构体
    public struct ModifyClientRemarkRequest: TCRequestModel {
        /// 客户备注名称
        public let clientRemark: String

        /// 客户账号ID
        public let clientUin: String

        public init(clientRemark: String, clientUin: String) {
            self.clientRemark = clientRemark
            self.clientUin = clientUin
        }

        enum CodingKeys: String, CodingKey {
            case clientRemark = "ClientRemark"
            case clientUin = "ClientUin"
        }
    }

    /// ModifyClientRemark返回参数结构体
    public struct ModifyClientRemarkResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改客户备注
    ///
    /// 代理商可以对名下客户添加备注、修改备注
    @inlinable
    public func modifyClientRemark(_ input: ModifyClientRemarkRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyClientRemarkResponse > {
        self.client.execute(action: "ModifyClientRemark", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改客户备注
    ///
    /// 代理商可以对名下客户添加备注、修改备注
    @inlinable
    public func modifyClientRemark(_ input: ModifyClientRemarkRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClientRemarkResponse {
        try await self.client.execute(action: "ModifyClientRemark", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改客户备注
    ///
    /// 代理商可以对名下客户添加备注、修改备注
    @inlinable
    public func modifyClientRemark(clientRemark: String, clientUin: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyClientRemarkResponse > {
        self.modifyClientRemark(ModifyClientRemarkRequest(clientRemark: clientRemark, clientUin: clientUin), logger: logger, on: eventLoop)
    }

    /// 修改客户备注
    ///
    /// 代理商可以对名下客户添加备注、修改备注
    @inlinable
    public func modifyClientRemark(clientRemark: String, clientUin: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClientRemarkResponse {
        try await self.modifyClientRemark(ModifyClientRemarkRequest(clientRemark: clientRemark, clientUin: clientUin), logger: logger, on: eventLoop)
    }
}
