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

extension Antiddos {
    /// ModifyDomainUsrName请求参数结构体
    public struct ModifyDomainUsrNameRequest: TCRequestModel {
        /// 用户CNAME
        public let domainName: String

        /// 域名名称
        public let domainUserName: String

        public init(domainName: String, domainUserName: String) {
            self.domainName = domainName
            self.domainUserName = domainUserName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case domainUserName = "DomainUserName"
        }
    }

    /// ModifyDomainUsrName返回参数结构体
    public struct ModifyDomainUsrNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改智能解析域名名称
    @inlinable
    public func modifyDomainUsrName(_ input: ModifyDomainUsrNameRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDomainUsrNameResponse > {
        self.client.execute(action: "ModifyDomainUsrName", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改智能解析域名名称
    @inlinable
    public func modifyDomainUsrName(_ input: ModifyDomainUsrNameRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainUsrNameResponse {
        try await self.client.execute(action: "ModifyDomainUsrName", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改智能解析域名名称
    @inlinable
    public func modifyDomainUsrName(domainName: String, domainUserName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDomainUsrNameResponse > {
        self.modifyDomainUsrName(ModifyDomainUsrNameRequest(domainName: domainName, domainUserName: domainUserName), logger: logger, on: eventLoop)
    }

    /// 修改智能解析域名名称
    @inlinable
    public func modifyDomainUsrName(domainName: String, domainUserName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainUsrNameResponse {
        try await self.modifyDomainUsrName(ModifyDomainUsrNameRequest(domainName: domainName, domainUserName: domainUserName), logger: logger, on: eventLoop)
    }
}
