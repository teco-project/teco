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

extension Cvm {
    /// DeleteLaunchTemplate请求参数结构体
    public struct DeleteLaunchTemplateRequest: TCRequest {
        /// 启动模板ID。
        public let launchTemplateId: String

        public init(launchTemplateId: String) {
            self.launchTemplateId = launchTemplateId
        }

        enum CodingKeys: String, CodingKey {
            case launchTemplateId = "LaunchTemplateId"
        }
    }

    /// DeleteLaunchTemplate返回参数结构体
    public struct DeleteLaunchTemplateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除实例启动模板
    ///
    /// 本接口（DeleteLaunchTemplate）用于删除一个实例启动模板。
    @inlinable @discardableResult
    public func deleteLaunchTemplate(_ input: DeleteLaunchTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLaunchTemplateResponse> {
        self.client.execute(action: "DeleteLaunchTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例启动模板
    ///
    /// 本接口（DeleteLaunchTemplate）用于删除一个实例启动模板。
    @inlinable @discardableResult
    public func deleteLaunchTemplate(_ input: DeleteLaunchTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLaunchTemplateResponse {
        try await self.client.execute(action: "DeleteLaunchTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实例启动模板
    ///
    /// 本接口（DeleteLaunchTemplate）用于删除一个实例启动模板。
    @inlinable @discardableResult
    public func deleteLaunchTemplate(launchTemplateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLaunchTemplateResponse> {
        self.deleteLaunchTemplate(.init(launchTemplateId: launchTemplateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实例启动模板
    ///
    /// 本接口（DeleteLaunchTemplate）用于删除一个实例启动模板。
    @inlinable @discardableResult
    public func deleteLaunchTemplate(launchTemplateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLaunchTemplateResponse {
        try await self.deleteLaunchTemplate(.init(launchTemplateId: launchTemplateId), region: region, logger: logger, on: eventLoop)
    }
}
