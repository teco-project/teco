//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Essbasic {
    /// ModifyOrganizationDefaultSeal请求参数结构体
    public struct ModifyOrganizationDefaultSealRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 重新指定的默认印章ID
        public let sealId: String

        /// 请求重新指定企业默认印章的客户端IP
        public let sourceIp: String

        public init(caller: Caller, sealId: String, sourceIp: String) {
            self.caller = caller
            self.sealId = sealId
            self.sourceIp = sourceIp
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case sealId = "SealId"
            case sourceIp = "SourceIp"
        }
    }

    /// ModifyOrganizationDefaultSeal返回参数结构体
    public struct ModifyOrganizationDefaultSealResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改企业默认印章
    ///
    /// 此接口 (ModifyOrganizationDefaultSeal) 用于重新指定企业默认印章。
    @inlinable
    public func modifyOrganizationDefaultSeal(_ input: ModifyOrganizationDefaultSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyOrganizationDefaultSealResponse> {
        self.client.execute(action: "ModifyOrganizationDefaultSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改企业默认印章
    ///
    /// 此接口 (ModifyOrganizationDefaultSeal) 用于重新指定企业默认印章。
    @inlinable
    public func modifyOrganizationDefaultSeal(_ input: ModifyOrganizationDefaultSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOrganizationDefaultSealResponse {
        try await self.client.execute(action: "ModifyOrganizationDefaultSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改企业默认印章
    ///
    /// 此接口 (ModifyOrganizationDefaultSeal) 用于重新指定企业默认印章。
    @inlinable
    public func modifyOrganizationDefaultSeal(caller: Caller, sealId: String, sourceIp: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyOrganizationDefaultSealResponse> {
        self.modifyOrganizationDefaultSeal(ModifyOrganizationDefaultSealRequest(caller: caller, sealId: sealId, sourceIp: sourceIp), region: region, logger: logger, on: eventLoop)
    }

    /// 修改企业默认印章
    ///
    /// 此接口 (ModifyOrganizationDefaultSeal) 用于重新指定企业默认印章。
    @inlinable
    public func modifyOrganizationDefaultSeal(caller: Caller, sealId: String, sourceIp: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOrganizationDefaultSealResponse {
        try await self.modifyOrganizationDefaultSeal(ModifyOrganizationDefaultSealRequest(caller: caller, sealId: sealId, sourceIp: sourceIp), region: region, logger: logger, on: eventLoop)
    }
}
