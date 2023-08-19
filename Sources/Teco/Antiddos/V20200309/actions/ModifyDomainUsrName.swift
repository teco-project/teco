//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Antiddos {
    /// ModifyDomainUsrName请求参数结构体
    public struct ModifyDomainUsrNameRequest: TCRequest {
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
    public struct ModifyDomainUsrNameResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改智能解析域名名称
    @inlinable @discardableResult
    public func modifyDomainUsrName(_ input: ModifyDomainUsrNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainUsrNameResponse> {
        self.client.execute(action: "ModifyDomainUsrName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改智能解析域名名称
    @inlinable @discardableResult
    public func modifyDomainUsrName(_ input: ModifyDomainUsrNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainUsrNameResponse {
        try await self.client.execute(action: "ModifyDomainUsrName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改智能解析域名名称
    @inlinable @discardableResult
    public func modifyDomainUsrName(domainName: String, domainUserName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainUsrNameResponse> {
        self.modifyDomainUsrName(.init(domainName: domainName, domainUserName: domainUserName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改智能解析域名名称
    @inlinable @discardableResult
    public func modifyDomainUsrName(domainName: String, domainUserName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainUsrNameResponse {
        try await self.modifyDomainUsrName(.init(domainName: domainName, domainUserName: domainUserName), region: region, logger: logger, on: eventLoop)
    }
}
