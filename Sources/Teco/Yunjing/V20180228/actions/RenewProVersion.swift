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

extension Yunjing {
    /// RenewProVersion请求参数结构体
    public struct RenewProVersionRequest: TCRequestModel {
        /// 购买相关参数。
        public let chargePrepaid: ChargePrepaid

        /// 主机唯一ID，对应CVM的uuid、BM的InstanceId。
        public let quuid: String

        public init(chargePrepaid: ChargePrepaid, quuid: String) {
            self.chargePrepaid = chargePrepaid
            self.quuid = quuid
        }

        enum CodingKeys: String, CodingKey {
            case chargePrepaid = "ChargePrepaid"
            case quuid = "Quuid"
        }
    }

    /// RenewProVersion返回参数结构体
    public struct RenewProVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 续费专业版
    ///
    /// 本接口 (RenewProVersion) 用于续费专业版(包年包月)。
    @inlinable
    public func renewProVersion(_ input: RenewProVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RenewProVersionResponse > {
        self.client.execute(action: "RenewProVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费专业版
    ///
    /// 本接口 (RenewProVersion) 用于续费专业版(包年包月)。
    @inlinable
    public func renewProVersion(_ input: RenewProVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewProVersionResponse {
        try await self.client.execute(action: "RenewProVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费专业版
    ///
    /// 本接口 (RenewProVersion) 用于续费专业版(包年包月)。
    @inlinable
    public func renewProVersion(chargePrepaid: ChargePrepaid, quuid: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RenewProVersionResponse > {
        self.renewProVersion(RenewProVersionRequest(chargePrepaid: chargePrepaid, quuid: quuid), logger: logger, on: eventLoop)
    }

    /// 续费专业版
    ///
    /// 本接口 (RenewProVersion) 用于续费专业版(包年包月)。
    @inlinable
    public func renewProVersion(chargePrepaid: ChargePrepaid, quuid: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewProVersionResponse {
        try await self.renewProVersion(RenewProVersionRequest(chargePrepaid: chargePrepaid, quuid: quuid), logger: logger, on: eventLoop)
    }
}
