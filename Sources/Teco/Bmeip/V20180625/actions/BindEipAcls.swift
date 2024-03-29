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

extension Bmeip {
    /// BindEipAcls请求参数结构体
    public struct BindEipAclsRequest: TCRequest {
        /// 待关联的 EIP 与 ACL关系列表
        public let eipIdAclIdList: [EipAclMap]

        public init(eipIdAclIdList: [EipAclMap]) {
            self.eipIdAclIdList = eipIdAclIdList
        }

        enum CodingKeys: String, CodingKey {
            case eipIdAclIdList = "EipIdAclIdList"
        }
    }

    /// BindEipAcls返回参数结构体
    public struct BindEipAclsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定弹性公网IP ACL
    ///
    /// 此接口用于为某个 EIP 关联 ACL。
    @inlinable @discardableResult
    public func bindEipAcls(_ input: BindEipAclsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindEipAclsResponse> {
        self.client.execute(action: "BindEipAcls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定弹性公网IP ACL
    ///
    /// 此接口用于为某个 EIP 关联 ACL。
    @inlinable @discardableResult
    public func bindEipAcls(_ input: BindEipAclsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindEipAclsResponse {
        try await self.client.execute(action: "BindEipAcls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定弹性公网IP ACL
    ///
    /// 此接口用于为某个 EIP 关联 ACL。
    @inlinable @discardableResult
    public func bindEipAcls(eipIdAclIdList: [EipAclMap], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindEipAclsResponse> {
        self.bindEipAcls(.init(eipIdAclIdList: eipIdAclIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定弹性公网IP ACL
    ///
    /// 此接口用于为某个 EIP 关联 ACL。
    @inlinable @discardableResult
    public func bindEipAcls(eipIdAclIdList: [EipAclMap], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindEipAclsResponse {
        try await self.bindEipAcls(.init(eipIdAclIdList: eipIdAclIdList), region: region, logger: logger, on: eventLoop)
    }
}
