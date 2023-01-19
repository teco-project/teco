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
    /// VerifySubOrganization请求参数结构体
    public struct VerifySubOrganizationRequest: TCRequestModel {
        /// 调用方信息，该接口SubOrganizationId必填
        public let caller: Caller

        /// 机构在第三方的唯一标识，32位定长字符串，与 Caller 中 SubOrgnizationId 二者至少需要传入一个，全部传入时则使用 SubOrganizationId 信息
        public let openId: String?

        public init(caller: Caller, openId: String? = nil) {
            self.caller = caller
            self.openId = openId
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case openId = "OpenId"
        }
    }

    /// VerifySubOrganization返回参数结构体
    public struct VerifySubOrganizationResponse: TCResponseModel {
        /// 子机构ID
        public let subOrganizationId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subOrganizationId = "SubOrganizationId"
            case requestId = "RequestId"
        }
    }

    /// 子机构通过实名认证
    ///
    /// 此接口（VerifySubOrganization）用于通过子机构的实名认证。
    /// 注：此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。
    @inlinable
    public func verifySubOrganization(_ input: VerifySubOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifySubOrganizationResponse> {
        self.client.execute(action: "VerifySubOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 子机构通过实名认证
    ///
    /// 此接口（VerifySubOrganization）用于通过子机构的实名认证。
    /// 注：此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。
    @inlinable
    public func verifySubOrganization(_ input: VerifySubOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifySubOrganizationResponse {
        try await self.client.execute(action: "VerifySubOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 子机构通过实名认证
    ///
    /// 此接口（VerifySubOrganization）用于通过子机构的实名认证。
    /// 注：此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。
    @inlinable
    public func verifySubOrganization(caller: Caller, openId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifySubOrganizationResponse> {
        self.verifySubOrganization(VerifySubOrganizationRequest(caller: caller, openId: openId), region: region, logger: logger, on: eventLoop)
    }

    /// 子机构通过实名认证
    ///
    /// 此接口（VerifySubOrganization）用于通过子机构的实名认证。
    /// 注：此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。
    @inlinable
    public func verifySubOrganization(caller: Caller, openId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifySubOrganizationResponse {
        try await self.verifySubOrganization(VerifySubOrganizationRequest(caller: caller, openId: openId), region: region, logger: logger, on: eventLoop)
    }
}
