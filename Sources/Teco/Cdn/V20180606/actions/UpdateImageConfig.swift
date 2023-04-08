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

extension Cdn {
    /// UpdateImageConfig请求参数结构体
    public struct UpdateImageConfigRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// WebpAdapter配置项
        public let webpAdapter: WebpAdapter?

        /// TpgAdapter配置项
        public let tpgAdapter: TpgAdapter?

        /// GuetzliAdapter配置项
        public let guetzliAdapter: GuetzliAdapter?

        /// AvifAdapter配置项
        public let avifAdapter: AvifAdapter?

        public init(domain: String, webpAdapter: WebpAdapter? = nil, tpgAdapter: TpgAdapter? = nil, guetzliAdapter: GuetzliAdapter? = nil, avifAdapter: AvifAdapter? = nil) {
            self.domain = domain
            self.webpAdapter = webpAdapter
            self.tpgAdapter = tpgAdapter
            self.guetzliAdapter = guetzliAdapter
            self.avifAdapter = avifAdapter
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case webpAdapter = "WebpAdapter"
            case tpgAdapter = "TpgAdapter"
            case guetzliAdapter = "GuetzliAdapter"
            case avifAdapter = "AvifAdapter"
        }
    }

    /// UpdateImageConfig返回参数结构体
    public struct UpdateImageConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新图片优化配置
    ///
    /// UpdateImageConfig 用于更新控制台图片优化的相关配置，支持Webp、TPG、 Guetzli 和 Avif。
    @inlinable @discardableResult
    public func updateImageConfig(_ input: UpdateImageConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateImageConfigResponse> {
        self.client.execute(action: "UpdateImageConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新图片优化配置
    ///
    /// UpdateImageConfig 用于更新控制台图片优化的相关配置，支持Webp、TPG、 Guetzli 和 Avif。
    @inlinable @discardableResult
    public func updateImageConfig(_ input: UpdateImageConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateImageConfigResponse {
        try await self.client.execute(action: "UpdateImageConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新图片优化配置
    ///
    /// UpdateImageConfig 用于更新控制台图片优化的相关配置，支持Webp、TPG、 Guetzli 和 Avif。
    @inlinable @discardableResult
    public func updateImageConfig(domain: String, webpAdapter: WebpAdapter? = nil, tpgAdapter: TpgAdapter? = nil, guetzliAdapter: GuetzliAdapter? = nil, avifAdapter: AvifAdapter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateImageConfigResponse> {
        self.updateImageConfig(.init(domain: domain, webpAdapter: webpAdapter, tpgAdapter: tpgAdapter, guetzliAdapter: guetzliAdapter, avifAdapter: avifAdapter), region: region, logger: logger, on: eventLoop)
    }

    /// 更新图片优化配置
    ///
    /// UpdateImageConfig 用于更新控制台图片优化的相关配置，支持Webp、TPG、 Guetzli 和 Avif。
    @inlinable @discardableResult
    public func updateImageConfig(domain: String, webpAdapter: WebpAdapter? = nil, tpgAdapter: TpgAdapter? = nil, guetzliAdapter: GuetzliAdapter? = nil, avifAdapter: AvifAdapter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateImageConfigResponse {
        try await self.updateImageConfig(.init(domain: domain, webpAdapter: webpAdapter, tpgAdapter: tpgAdapter, guetzliAdapter: guetzliAdapter, avifAdapter: avifAdapter), region: region, logger: logger, on: eventLoop)
    }
}
