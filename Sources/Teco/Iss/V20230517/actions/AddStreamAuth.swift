//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// AddStreamAuth请求参数结构体
    public struct AddStreamAuthRequest: TCRequestModel {
        /// 鉴权配置ID（uuid）
        public let id: String

        /// 是否开播放鉴权（1:开启,0:关闭）
        public let pullState: Int64

        /// 播放密钥（仅支持字母数字，长度0-10位）
        public let pullSecret: String

        /// 播放过期时间（单位：分钟）
        public let pullExpired: Int64

        /// 是否开启推流鉴权（1:开启,0:关闭）
        public let pushState: Int64

        /// 推流密钥（仅支持字母数字，长度0-10位）
        public let pushSecret: String

        /// 推流过期时间（单位：分钟）
        public let pushExpired: Int64

        public init(id: String, pullState: Int64, pullSecret: String, pullExpired: Int64, pushState: Int64, pushSecret: String, pushExpired: Int64) {
            self.id = id
            self.pullState = pullState
            self.pullSecret = pullSecret
            self.pullExpired = pullExpired
            self.pushState = pushState
            self.pushSecret = pushSecret
            self.pushExpired = pushExpired
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case pullState = "PullState"
            case pullSecret = "PullSecret"
            case pullExpired = "PullExpired"
            case pushState = "PushState"
            case pushSecret = "PushSecret"
            case pushExpired = "PushExpired"
        }
    }

    /// 设置推拉流鉴权返回数据结构
    public struct AddStreamAuthResponse: TCResponseModel {
        private let data: Wrapped

        private struct Wrapped: Codable {
            public let id: String?

            public let pullState: Int64?

            public let pullSecret: String?

            public let pullExpired: Int64?

            public let pushState: Int64?

            public let pushSecret: String?

            public let pushExpired: Int64?

            public let appId: Int64?

            enum CodingKeys: String, CodingKey {
                case id = "Id"
                case pullState = "PullState"
                case pullSecret = "PullSecret"
                case pullExpired = "PullExpired"
                case pushState = "PushState"
                case pushSecret = "PushSecret"
                case pushExpired = "PushExpired"
                case appId = "AppId"
            }
        }

        /// 鉴权配置ID（uuid）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var id: String? {
            self.data.id
        }

        /// 是否开播放鉴权（1:开启,0:关闭）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var pullState: Int64? {
            self.data.pullState
        }

        /// 播放密钥（仅支持字母数字，长度0-10位）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var pullSecret: String? {
            self.data.pullSecret
        }

        /// 播放过期时间（单位：分钟）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var pullExpired: Int64? {
            self.data.pullExpired
        }

        /// 是否开启推流鉴权（1:开启,0:关闭）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var pushState: Int64? {
            self.data.pushState
        }

        /// 推流密钥（仅支持字母数字，长度0-10位）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var pushSecret: String? {
            self.data.pushSecret
        }

        /// 推流过期时间（单位：分钟）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var pushExpired: Int64? {
            self.data.pushExpired
        }

        /// 用户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var appId: Int64? {
            self.data.appId
        }

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 设置推拉流鉴权配置
    ///
    /// 用于设置推拉流鉴权配置。
    @inlinable
    public func addStreamAuth(_ input: AddStreamAuthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddStreamAuthResponse> {
        self.client.execute(action: "AddStreamAuth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置推拉流鉴权配置
    ///
    /// 用于设置推拉流鉴权配置。
    @inlinable
    public func addStreamAuth(_ input: AddStreamAuthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddStreamAuthResponse {
        try await self.client.execute(action: "AddStreamAuth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置推拉流鉴权配置
    ///
    /// 用于设置推拉流鉴权配置。
    @inlinable
    public func addStreamAuth(id: String, pullState: Int64, pullSecret: String, pullExpired: Int64, pushState: Int64, pushSecret: String, pushExpired: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddStreamAuthResponse> {
        self.addStreamAuth(.init(id: id, pullState: pullState, pullSecret: pullSecret, pullExpired: pullExpired, pushState: pushState, pushSecret: pushSecret, pushExpired: pushExpired), region: region, logger: logger, on: eventLoop)
    }

    /// 设置推拉流鉴权配置
    ///
    /// 用于设置推拉流鉴权配置。
    @inlinable
    public func addStreamAuth(id: String, pullState: Int64, pullSecret: String, pullExpired: Int64, pushState: Int64, pushSecret: String, pushExpired: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddStreamAuthResponse {
        try await self.addStreamAuth(.init(id: id, pullState: pullState, pullSecret: pullSecret, pullExpired: pullExpired, pushState: pushState, pushSecret: pushSecret, pushExpired: pushExpired), region: region, logger: logger, on: eventLoop)
    }
}
