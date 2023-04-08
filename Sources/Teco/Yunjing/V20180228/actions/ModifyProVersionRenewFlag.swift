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

import TecoCore

extension Yunjing {
    /// ModifyProVersionRenewFlag请求参数结构体
    public struct ModifyProVersionRenewFlagRequest: TCRequestModel {
        /// 自动续费标识。取值范围：
        /// <li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费</li>
        /// <li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费</li>
        /// <li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费</li>
        public let renewFlag: String

        /// 主机唯一ID，对应CVM的uuid、BM的instanceId。
        public let quuid: String

        public init(renewFlag: String, quuid: String) {
            self.renewFlag = renewFlag
            self.quuid = quuid
        }

        enum CodingKeys: String, CodingKey {
            case renewFlag = "RenewFlag"
            case quuid = "Quuid"
        }
    }

    /// ModifyProVersionRenewFlag返回参数结构体
    public struct ModifyProVersionRenewFlagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改专业版续费标识
    ///
    /// 本接口 (ModifyProVersionRenewFlag) 用于修改专业版包年包月续费标识。
    @inlinable @discardableResult
    public func modifyProVersionRenewFlag(_ input: ModifyProVersionRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProVersionRenewFlagResponse> {
        self.client.execute(action: "ModifyProVersionRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改专业版续费标识
    ///
    /// 本接口 (ModifyProVersionRenewFlag) 用于修改专业版包年包月续费标识。
    @inlinable @discardableResult
    public func modifyProVersionRenewFlag(_ input: ModifyProVersionRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProVersionRenewFlagResponse {
        try await self.client.execute(action: "ModifyProVersionRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改专业版续费标识
    ///
    /// 本接口 (ModifyProVersionRenewFlag) 用于修改专业版包年包月续费标识。
    @inlinable @discardableResult
    public func modifyProVersionRenewFlag(renewFlag: String, quuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProVersionRenewFlagResponse> {
        self.modifyProVersionRenewFlag(.init(renewFlag: renewFlag, quuid: quuid), region: region, logger: logger, on: eventLoop)
    }

    /// 修改专业版续费标识
    ///
    /// 本接口 (ModifyProVersionRenewFlag) 用于修改专业版包年包月续费标识。
    @inlinable @discardableResult
    public func modifyProVersionRenewFlag(renewFlag: String, quuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProVersionRenewFlagResponse {
        try await self.modifyProVersionRenewFlag(.init(renewFlag: renewFlag, quuid: quuid), region: region, logger: logger, on: eventLoop)
    }
}
