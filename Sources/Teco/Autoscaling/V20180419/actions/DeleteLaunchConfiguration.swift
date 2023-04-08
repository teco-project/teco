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

extension As {
    /// DeleteLaunchConfiguration请求参数结构体
    public struct DeleteLaunchConfigurationRequest: TCRequestModel {
        /// 需要删除的启动配置ID。
        public let launchConfigurationId: String

        public init(launchConfigurationId: String) {
            self.launchConfigurationId = launchConfigurationId
        }

        enum CodingKeys: String, CodingKey {
            case launchConfigurationId = "LaunchConfigurationId"
        }
    }

    /// DeleteLaunchConfiguration返回参数结构体
    public struct DeleteLaunchConfigurationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除启动配置
    ///
    /// 本接口（DeleteLaunchConfiguration）用于删除启动配置。
    ///
    /// * 若启动配置在伸缩组中属于生效状态，则该启动配置不允许删除。
    @inlinable @discardableResult
    public func deleteLaunchConfiguration(_ input: DeleteLaunchConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLaunchConfigurationResponse> {
        self.client.execute(action: "DeleteLaunchConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除启动配置
    ///
    /// 本接口（DeleteLaunchConfiguration）用于删除启动配置。
    ///
    /// * 若启动配置在伸缩组中属于生效状态，则该启动配置不允许删除。
    @inlinable @discardableResult
    public func deleteLaunchConfiguration(_ input: DeleteLaunchConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLaunchConfigurationResponse {
        try await self.client.execute(action: "DeleteLaunchConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除启动配置
    ///
    /// 本接口（DeleteLaunchConfiguration）用于删除启动配置。
    ///
    /// * 若启动配置在伸缩组中属于生效状态，则该启动配置不允许删除。
    @inlinable @discardableResult
    public func deleteLaunchConfiguration(launchConfigurationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLaunchConfigurationResponse> {
        self.deleteLaunchConfiguration(.init(launchConfigurationId: launchConfigurationId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除启动配置
    ///
    /// 本接口（DeleteLaunchConfiguration）用于删除启动配置。
    ///
    /// * 若启动配置在伸缩组中属于生效状态，则该启动配置不允许删除。
    @inlinable @discardableResult
    public func deleteLaunchConfiguration(launchConfigurationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLaunchConfigurationResponse {
        try await self.deleteLaunchConfiguration(.init(launchConfigurationId: launchConfigurationId), region: region, logger: logger, on: eventLoop)
    }
}
