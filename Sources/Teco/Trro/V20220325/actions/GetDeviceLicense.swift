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

extension Trro {
    /// GetDeviceLicense请求参数结构体
    public struct GetDeviceLicenseRequest: TCRequestModel {
        /// 目标设备所属项目ID
        public let projectId: String

        /// 目标设备ID
        public let deviceId: String

        public init(projectId: String, deviceId: String) {
            self.projectId = projectId
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case deviceId = "DeviceId"
        }
    }

    /// GetDeviceLicense返回参数结构体
    public struct GetDeviceLicenseResponse: TCResponseModel {
        /// 指定设备已经绑定的可用license数量
        public let availableCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case availableCount = "AvailableCount"
            case requestId = "RequestId"
        }
    }

    /// 获取设备授权数量
    ///
    /// 获取设备已经绑定的可用授权数量
    @inlinable
    public func getDeviceLicense(_ input: GetDeviceLicenseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceLicenseResponse> {
        self.client.execute(action: "GetDeviceLicense", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备授权数量
    ///
    /// 获取设备已经绑定的可用授权数量
    @inlinable
    public func getDeviceLicense(_ input: GetDeviceLicenseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceLicenseResponse {
        try await self.client.execute(action: "GetDeviceLicense", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备授权数量
    ///
    /// 获取设备已经绑定的可用授权数量
    @inlinable
    public func getDeviceLicense(projectId: String, deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceLicenseResponse> {
        self.getDeviceLicense(.init(projectId: projectId, deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备授权数量
    ///
    /// 获取设备已经绑定的可用授权数量
    @inlinable
    public func getDeviceLicense(projectId: String, deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceLicenseResponse {
        try await self.getDeviceLicense(.init(projectId: projectId, deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
