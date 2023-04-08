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

extension Teo {
    /// ModifyAccelerationDomain请求参数结构体
    public struct ModifyAccelerationDomainRequest: TCRequestModel {
        /// 加速域名所属站点ID。
        public let zoneId: String

        /// 加速域名名称。
        public let domainName: String

        /// 源站信息。
        public let originInfo: OriginInfo

        public init(zoneId: String, domainName: String, originInfo: OriginInfo) {
            self.zoneId = zoneId
            self.domainName = domainName
            self.originInfo = originInfo
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case domainName = "DomainName"
            case originInfo = "OriginInfo"
        }
    }

    /// ModifyAccelerationDomain返回参数结构体
    public struct ModifyAccelerationDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改加速域名信息
    @inlinable @discardableResult
    public func modifyAccelerationDomain(_ input: ModifyAccelerationDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccelerationDomainResponse> {
        self.client.execute(action: "ModifyAccelerationDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改加速域名信息
    @inlinable @discardableResult
    public func modifyAccelerationDomain(_ input: ModifyAccelerationDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccelerationDomainResponse {
        try await self.client.execute(action: "ModifyAccelerationDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改加速域名信息
    @inlinable @discardableResult
    public func modifyAccelerationDomain(zoneId: String, domainName: String, originInfo: OriginInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccelerationDomainResponse> {
        self.modifyAccelerationDomain(.init(zoneId: zoneId, domainName: domainName, originInfo: originInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 修改加速域名信息
    @inlinable @discardableResult
    public func modifyAccelerationDomain(zoneId: String, domainName: String, originInfo: OriginInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccelerationDomainResponse {
        try await self.modifyAccelerationDomain(.init(zoneId: zoneId, domainName: domainName, originInfo: originInfo), region: region, logger: logger, on: eventLoop)
    }
}