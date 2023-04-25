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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vod {
    /// ModifyDefaultStorageRegion请求参数结构体
    public struct ModifyDefaultStorageRegionRequest: TCRequestModel {
        /// 默认的存储地域，必须是已经开通的地域（通过 DescribeStorageRegions 接口查询）。
        public let storageRegion: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(storageRegion: String, subAppId: UInt64? = nil) {
            self.storageRegion = storageRegion
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case storageRegion = "StorageRegion"
            case subAppId = "SubAppId"
        }
    }

    /// ModifyDefaultStorageRegion返回参数结构体
    public struct ModifyDefaultStorageRegionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置默认的存储地域
    ///
    /// 该接口用于设置默认的存储地域。上传文件时如果没有指定地域，将上传到默认地域。
    @inlinable @discardableResult
    public func modifyDefaultStorageRegion(_ input: ModifyDefaultStorageRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDefaultStorageRegionResponse> {
        self.client.execute(action: "ModifyDefaultStorageRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置默认的存储地域
    ///
    /// 该接口用于设置默认的存储地域。上传文件时如果没有指定地域，将上传到默认地域。
    @inlinable @discardableResult
    public func modifyDefaultStorageRegion(_ input: ModifyDefaultStorageRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDefaultStorageRegionResponse {
        try await self.client.execute(action: "ModifyDefaultStorageRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置默认的存储地域
    ///
    /// 该接口用于设置默认的存储地域。上传文件时如果没有指定地域，将上传到默认地域。
    @inlinable @discardableResult
    public func modifyDefaultStorageRegion(storageRegion: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDefaultStorageRegionResponse> {
        self.modifyDefaultStorageRegion(.init(storageRegion: storageRegion, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 设置默认的存储地域
    ///
    /// 该接口用于设置默认的存储地域。上传文件时如果没有指定地域，将上传到默认地域。
    @inlinable @discardableResult
    public func modifyDefaultStorageRegion(storageRegion: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDefaultStorageRegionResponse {
        try await self.modifyDefaultStorageRegion(.init(storageRegion: storageRegion, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
