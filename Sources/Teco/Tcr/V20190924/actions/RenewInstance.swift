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

extension Tcr {
    /// RenewInstance请求参数结构体
    public struct RenewInstanceRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String

        /// 预付费自动续费标识和购买时长,0：手动续费，1：自动续费，2：不续费并且不通知;单位为月
        public let registryChargePrepaid: RegistryChargePrepaid

        /// 0 续费， 1按量转包年包月
        public let flag: Int64

        public init(registryId: String, registryChargePrepaid: RegistryChargePrepaid, flag: Int64) {
            self.registryId = registryId
            self.registryChargePrepaid = registryChargePrepaid
            self.flag = flag
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case registryChargePrepaid = "RegistryChargePrepaid"
            case flag = "Flag"
        }
    }

    /// RenewInstance返回参数结构体
    public struct RenewInstanceResponse: TCResponseModel {
        /// 企业版实例Id
        public let registryId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case requestId = "RequestId"
        }
    }

    /// 续费实例
    ///
    /// 预付费实例续费，同时支持按量计费转包年包月
    @inlinable
    public func renewInstance(_ input: RenewInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewInstanceResponse> {
        self.client.execute(action: "RenewInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费实例
    ///
    /// 预付费实例续费，同时支持按量计费转包年包月
    @inlinable
    public func renewInstance(_ input: RenewInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewInstanceResponse {
        try await self.client.execute(action: "RenewInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费实例
    ///
    /// 预付费实例续费，同时支持按量计费转包年包月
    @inlinable
    public func renewInstance(registryId: String, registryChargePrepaid: RegistryChargePrepaid, flag: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewInstanceResponse> {
        self.renewInstance(.init(registryId: registryId, registryChargePrepaid: registryChargePrepaid, flag: flag), region: region, logger: logger, on: eventLoop)
    }

    /// 续费实例
    ///
    /// 预付费实例续费，同时支持按量计费转包年包月
    @inlinable
    public func renewInstance(registryId: String, registryChargePrepaid: RegistryChargePrepaid, flag: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewInstanceResponse {
        try await self.renewInstance(.init(registryId: registryId, registryChargePrepaid: registryChargePrepaid, flag: flag), region: region, logger: logger, on: eventLoop)
    }
}
