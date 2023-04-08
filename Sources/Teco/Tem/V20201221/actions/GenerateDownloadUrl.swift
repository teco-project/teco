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
    /// GenerateDownloadUrl请求参数结构体
    public struct GenerateDownloadUrlRequest: TCRequestModel {
        /// 服务ID
        public let serviceId: String

        /// 包名
        public let pkgName: String

        /// 需要下载的包版本
        public let deployVersion: String

        /// 来源 channel
        public let sourceChannel: Int64?

        public init(serviceId: String, pkgName: String, deployVersion: String, sourceChannel: Int64? = nil) {
            self.serviceId = serviceId
            self.pkgName = pkgName
            self.deployVersion = deployVersion
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case pkgName = "PkgName"
            case deployVersion = "DeployVersion"
            case sourceChannel = "SourceChannel"
        }
    }

    /// GenerateDownloadUrl返回参数结构体
    public struct GenerateDownloadUrlResponse: TCResponseModel {
        /// 包下载临时链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 生成包预签名下载链接
    @inlinable
    public func generateDownloadUrl(_ input: GenerateDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateDownloadUrlResponse> {
        self.client.execute(action: "GenerateDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成包预签名下载链接
    @inlinable
    public func generateDownloadUrl(_ input: GenerateDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateDownloadUrlResponse {
        try await self.client.execute(action: "GenerateDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成包预签名下载链接
    @inlinable
    public func generateDownloadUrl(serviceId: String, pkgName: String, deployVersion: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateDownloadUrlResponse> {
        self.generateDownloadUrl(.init(serviceId: serviceId, pkgName: pkgName, deployVersion: deployVersion, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 生成包预签名下载链接
    @inlinable
    public func generateDownloadUrl(serviceId: String, pkgName: String, deployVersion: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateDownloadUrlResponse {
        try await self.generateDownloadUrl(.init(serviceId: serviceId, pkgName: pkgName, deployVersion: deployVersion, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
