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

extension Dasb {
    /// ImportExternalDevice请求参数结构体
    public struct ImportExternalDeviceRequest: TCRequestModel {
        /// 资产参数列表
        public let deviceSet: [ExternalDevice]

        public init(deviceSet: [ExternalDevice]) {
            self.deviceSet = deviceSet
        }

        enum CodingKeys: String, CodingKey {
            case deviceSet = "DeviceSet"
        }
    }

    /// ImportExternalDevice返回参数结构体
    public struct ImportExternalDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 导入外部资产信息
    @inlinable @discardableResult
    public func importExternalDevice(_ input: ImportExternalDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportExternalDeviceResponse> {
        self.client.execute(action: "ImportExternalDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入外部资产信息
    @inlinable @discardableResult
    public func importExternalDevice(_ input: ImportExternalDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportExternalDeviceResponse {
        try await self.client.execute(action: "ImportExternalDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入外部资产信息
    @inlinable @discardableResult
    public func importExternalDevice(deviceSet: [ExternalDevice], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportExternalDeviceResponse> {
        self.importExternalDevice(.init(deviceSet: deviceSet), region: region, logger: logger, on: eventLoop)
    }

    /// 导入外部资产信息
    @inlinable @discardableResult
    public func importExternalDevice(deviceSet: [ExternalDevice], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportExternalDeviceResponse {
        try await self.importExternalDevice(.init(deviceSet: deviceSet), region: region, logger: logger, on: eventLoop)
    }
}
