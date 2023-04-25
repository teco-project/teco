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
    /// CreateStorageRegion请求参数结构体
    public struct CreateStorageRegionRequest: TCRequestModel {
        /// 待开通的存储地域，必须是系统支持的地域。
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

    /// CreateStorageRegion返回参数结构体
    public struct CreateStorageRegionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开通某地域的存储
    ///
    /// 该接口用于开通某地域的存储。
    ///   1. 用户开通点播业务时，系统默认为用户开通了部分地域的存储，用户如果需要开通其它地域的存储，可以通过该接口进行开通。
    ///   2. 通过 DescribeStorageRegions 接口可以查询到所有存储地域及已经开通的地域。
    @inlinable @discardableResult
    public func createStorageRegion(_ input: CreateStorageRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStorageRegionResponse> {
        self.client.execute(action: "CreateStorageRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通某地域的存储
    ///
    /// 该接口用于开通某地域的存储。
    ///   1. 用户开通点播业务时，系统默认为用户开通了部分地域的存储，用户如果需要开通其它地域的存储，可以通过该接口进行开通。
    ///   2. 通过 DescribeStorageRegions 接口可以查询到所有存储地域及已经开通的地域。
    @inlinable @discardableResult
    public func createStorageRegion(_ input: CreateStorageRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStorageRegionResponse {
        try await self.client.execute(action: "CreateStorageRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通某地域的存储
    ///
    /// 该接口用于开通某地域的存储。
    ///   1. 用户开通点播业务时，系统默认为用户开通了部分地域的存储，用户如果需要开通其它地域的存储，可以通过该接口进行开通。
    ///   2. 通过 DescribeStorageRegions 接口可以查询到所有存储地域及已经开通的地域。
    @inlinable @discardableResult
    public func createStorageRegion(storageRegion: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStorageRegionResponse> {
        self.createStorageRegion(.init(storageRegion: storageRegion, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 开通某地域的存储
    ///
    /// 该接口用于开通某地域的存储。
    ///   1. 用户开通点播业务时，系统默认为用户开通了部分地域的存储，用户如果需要开通其它地域的存储，可以通过该接口进行开通。
    ///   2. 通过 DescribeStorageRegions 接口可以查询到所有存储地域及已经开通的地域。
    @inlinable @discardableResult
    public func createStorageRegion(storageRegion: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStorageRegionResponse {
        try await self.createStorageRegion(.init(storageRegion: storageRegion, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
