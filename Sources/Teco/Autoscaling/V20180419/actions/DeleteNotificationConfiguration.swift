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

import TecoCore

extension As {
    /// DeleteNotificationConfiguration请求参数结构体
    public struct DeleteNotificationConfigurationRequest: TCRequestModel {
        /// 待删除的通知ID。
        public let autoScalingNotificationId: String?

        public init(autoScalingNotificationId: String? = nil) {
            self.autoScalingNotificationId = autoScalingNotificationId
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingNotificationId = "AutoScalingNotificationId"
        }
    }

    /// DeleteNotificationConfiguration返回参数结构体
    public struct DeleteNotificationConfigurationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除通知
    ///
    /// 本接口（DeleteNotificationConfiguration）用于删除特定的通知。
    @inlinable @discardableResult
    public func deleteNotificationConfiguration(_ input: DeleteNotificationConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNotificationConfigurationResponse> {
        self.client.execute(action: "DeleteNotificationConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除通知
    ///
    /// 本接口（DeleteNotificationConfiguration）用于删除特定的通知。
    @inlinable @discardableResult
    public func deleteNotificationConfiguration(_ input: DeleteNotificationConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNotificationConfigurationResponse {
        try await self.client.execute(action: "DeleteNotificationConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除通知
    ///
    /// 本接口（DeleteNotificationConfiguration）用于删除特定的通知。
    @inlinable @discardableResult
    public func deleteNotificationConfiguration(autoScalingNotificationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNotificationConfigurationResponse> {
        self.deleteNotificationConfiguration(.init(autoScalingNotificationId: autoScalingNotificationId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除通知
    ///
    /// 本接口（DeleteNotificationConfiguration）用于删除特定的通知。
    @inlinable @discardableResult
    public func deleteNotificationConfiguration(autoScalingNotificationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNotificationConfigurationResponse {
        try await self.deleteNotificationConfiguration(.init(autoScalingNotificationId: autoScalingNotificationId), region: region, logger: logger, on: eventLoop)
    }
}
