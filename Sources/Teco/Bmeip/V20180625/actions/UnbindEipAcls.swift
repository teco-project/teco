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

extension Bmeip {
    /// UnbindEipAcls请求参数结构体
    public struct UnbindEipAclsRequest: TCRequestModel {
        /// 待解关联的 EIP 与 ACL列表
        public let eipIdAclIdList: [EipAclMap]

        public init(eipIdAclIdList: [EipAclMap]) {
            self.eipIdAclIdList = eipIdAclIdList
        }

        enum CodingKeys: String, CodingKey {
            case eipIdAclIdList = "EipIdAclIdList"
        }
    }

    /// UnbindEipAcls返回参数结构体
    public struct UnbindEipAclsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑弹性公网IP ACL
    @inlinable @discardableResult
    public func unbindEipAcls(_ input: UnbindEipAclsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindEipAclsResponse> {
        self.client.execute(action: "UnbindEipAcls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑弹性公网IP ACL
    @inlinable @discardableResult
    public func unbindEipAcls(_ input: UnbindEipAclsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindEipAclsResponse {
        try await self.client.execute(action: "UnbindEipAcls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑弹性公网IP ACL
    @inlinable @discardableResult
    public func unbindEipAcls(eipIdAclIdList: [EipAclMap], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindEipAclsResponse> {
        self.unbindEipAcls(UnbindEipAclsRequest(eipIdAclIdList: eipIdAclIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑弹性公网IP ACL
    @inlinable @discardableResult
    public func unbindEipAcls(eipIdAclIdList: [EipAclMap], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindEipAclsResponse {
        try await self.unbindEipAcls(UnbindEipAclsRequest(eipIdAclIdList: eipIdAclIdList), region: region, logger: logger, on: eventLoop)
    }
}
