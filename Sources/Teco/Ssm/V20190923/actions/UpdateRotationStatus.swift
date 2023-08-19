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

extension Ssm {
    /// UpdateRotationStatus请求参数结构体
    public struct UpdateRotationStatusRequest: TCRequest {
        /// 云产品凭据名称。
        public let secretName: String

        /// 是否开启轮转。
        /// true -- 开启轮转；
        /// false -- 禁止轮转。
        public let enableRotation: Bool

        /// 轮转周期，以天为单位，最小为30天，最大为365天。
        public let frequency: Int64?

        /// 用户设置的期望开始轮转时间，格式为：2006-01-02 15:04:05。
        /// 当EnableRotation为true时，如果不填RotationBeginTime，则默认填充为当前时间。
        public let rotationBeginTime: String?

        public init(secretName: String, enableRotation: Bool, frequency: Int64? = nil, rotationBeginTime: String? = nil) {
            self.secretName = secretName
            self.enableRotation = enableRotation
            self.frequency = frequency
            self.rotationBeginTime = rotationBeginTime
        }

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case enableRotation = "EnableRotation"
            case frequency = "Frequency"
            case rotationBeginTime = "RotationBeginTime"
        }
    }

    /// UpdateRotationStatus返回参数结构体
    public struct UpdateRotationStatusResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置云产品凭据轮转策略
    ///
    /// 设置云产品凭据轮转策略，可以设置：
    /// 是否开启轮转
    /// 轮转周期
    /// 轮转开始时间
    @inlinable @discardableResult
    public func updateRotationStatus(_ input: UpdateRotationStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRotationStatusResponse> {
        self.client.execute(action: "UpdateRotationStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置云产品凭据轮转策略
    ///
    /// 设置云产品凭据轮转策略，可以设置：
    /// 是否开启轮转
    /// 轮转周期
    /// 轮转开始时间
    @inlinable @discardableResult
    public func updateRotationStatus(_ input: UpdateRotationStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRotationStatusResponse {
        try await self.client.execute(action: "UpdateRotationStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置云产品凭据轮转策略
    ///
    /// 设置云产品凭据轮转策略，可以设置：
    /// 是否开启轮转
    /// 轮转周期
    /// 轮转开始时间
    @inlinable @discardableResult
    public func updateRotationStatus(secretName: String, enableRotation: Bool, frequency: Int64? = nil, rotationBeginTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRotationStatusResponse> {
        self.updateRotationStatus(.init(secretName: secretName, enableRotation: enableRotation, frequency: frequency, rotationBeginTime: rotationBeginTime), region: region, logger: logger, on: eventLoop)
    }

    /// 设置云产品凭据轮转策略
    ///
    /// 设置云产品凭据轮转策略，可以设置：
    /// 是否开启轮转
    /// 轮转周期
    /// 轮转开始时间
    @inlinable @discardableResult
    public func updateRotationStatus(secretName: String, enableRotation: Bool, frequency: Int64? = nil, rotationBeginTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRotationStatusResponse {
        try await self.updateRotationStatus(.init(secretName: secretName, enableRotation: enableRotation, frequency: frequency, rotationBeginTime: rotationBeginTime), region: region, logger: logger, on: eventLoop)
    }
}
