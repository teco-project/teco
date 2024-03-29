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

extension Tem {
    /// CreateCosToken请求参数结构体
    public struct CreateCosTokenRequest: TCRequest {
        /// 服务ID
        public let serviceId: String

        /// 服务版本ID
        public let versionId: String

        /// 包名
        public let pkgName: String

        /// optType 1上传  2查询
        public let optType: Int64

        /// 来源 channel
        public let sourceChannel: Int64?

        public init(serviceId: String, versionId: String, pkgName: String, optType: Int64, sourceChannel: Int64? = nil) {
            self.serviceId = serviceId
            self.versionId = versionId
            self.pkgName = pkgName
            self.optType = optType
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case versionId = "VersionId"
            case pkgName = "PkgName"
            case optType = "OptType"
            case sourceChannel = "SourceChannel"
        }
    }

    /// CreateCosToken返回参数结构体
    public struct CreateCosTokenResponse: TCResponse {
        /// 成功时为CosToken对象，失败为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CosToken?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 生成Cos临时秘钥
    @inlinable
    public func createCosToken(_ input: CreateCosTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCosTokenResponse> {
        self.client.execute(action: "CreateCosToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成Cos临时秘钥
    @inlinable
    public func createCosToken(_ input: CreateCosTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCosTokenResponse {
        try await self.client.execute(action: "CreateCosToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成Cos临时秘钥
    @inlinable
    public func createCosToken(serviceId: String, versionId: String, pkgName: String, optType: Int64, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCosTokenResponse> {
        self.createCosToken(.init(serviceId: serviceId, versionId: versionId, pkgName: pkgName, optType: optType, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 生成Cos临时秘钥
    @inlinable
    public func createCosToken(serviceId: String, versionId: String, pkgName: String, optType: Int64, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCosTokenResponse {
        try await self.createCosToken(.init(serviceId: serviceId, versionId: versionId, pkgName: pkgName, optType: optType, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
