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

extension Tiw {
    /// ModifyApplication请求参数结构体
    public struct ModifyApplicationRequest: TCRequestModel {
        /// 应用SdkAppId
        public let sdkAppId: Int64

        /// App名字
        public let appName: String

        public init(sdkAppId: Int64, appName: String) {
            self.sdkAppId = sdkAppId
            self.appName = appName
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case appName = "AppName"
        }
    }

    /// ModifyApplication返回参数结构体
    public struct ModifyApplicationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改白板应用
    @inlinable @discardableResult
    public func modifyApplication(_ input: ModifyApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationResponse> {
        self.client.execute(action: "ModifyApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改白板应用
    @inlinable @discardableResult
    public func modifyApplication(_ input: ModifyApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationResponse {
        try await self.client.execute(action: "ModifyApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改白板应用
    @inlinable @discardableResult
    public func modifyApplication(sdkAppId: Int64, appName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationResponse> {
        self.modifyApplication(.init(sdkAppId: sdkAppId, appName: appName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改白板应用
    @inlinable @discardableResult
    public func modifyApplication(sdkAppId: Int64, appName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationResponse {
        try await self.modifyApplication(.init(sdkAppId: sdkAppId, appName: appName), region: region, logger: logger, on: eventLoop)
    }
}
