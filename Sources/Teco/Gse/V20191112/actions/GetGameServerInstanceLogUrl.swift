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

extension Gse {
    /// GetGameServerInstanceLogUrl请求参数结构体
    public struct GetGameServerInstanceLogUrlRequest: TCPaginatedRequest {
        /// 游戏舰队ID
        public let fleetId: String

        /// 实例ID
        public let instanceId: String?

        /// 实例IP
        public let serverIp: String?

        /// 偏移量
        public let offset: UInt64?

        /// 每次条数
        public let size: UInt64?

        public init(fleetId: String, instanceId: String? = nil, serverIp: String? = nil, offset: UInt64? = nil, size: UInt64? = nil) {
            self.fleetId = fleetId
            self.instanceId = instanceId
            self.serverIp = serverIp
            self.offset = offset
            self.size = size
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case instanceId = "InstanceId"
            case serverIp = "ServerIp"
            case offset = "Offset"
            case size = "Size"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetGameServerInstanceLogUrlResponse) -> GetGameServerInstanceLogUrlRequest? {
            guard response.hasNext else {
                return nil
            }
            return .init(fleetId: self.fleetId, instanceId: self.instanceId, serverIp: self.serverIp, offset: (self.offset ?? 0) + .init(response.getItems().count), size: self.size)
        }
    }

    /// GetGameServerInstanceLogUrl返回参数结构体
    public struct GetGameServerInstanceLogUrlResponse: TCPaginatedResponse {
        /// 日志下载URL的数组，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let presignedUrls: [String]?

        /// 总条数
        public let total: UInt64

        /// 是否还有没拉取完的
        public let hasNext: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case presignedUrls = "PresignedUrls"
            case total = "Total"
            case hasNext = "HasNext"
            case requestId = "RequestId"
        }

        /// Extract the returned ``String`` list from the paginated response.
        public func getItems() -> [String] {
            self.presignedUrls ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取游戏服务器实例的日志URL
    ///
    /// 本接口用于获取游戏服务器实例的日志URL。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getGameServerInstanceLogUrl(_ input: GetGameServerInstanceLogUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGameServerInstanceLogUrlResponse> {
        fatalError("GetGameServerInstanceLogUrl is no longer available.")
    }

    /// 获取游戏服务器实例的日志URL
    ///
    /// 本接口用于获取游戏服务器实例的日志URL。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getGameServerInstanceLogUrl(_ input: GetGameServerInstanceLogUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGameServerInstanceLogUrlResponse {
        fatalError("GetGameServerInstanceLogUrl is no longer available.")
    }

    /// 获取游戏服务器实例的日志URL
    ///
    /// 本接口用于获取游戏服务器实例的日志URL。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getGameServerInstanceLogUrl(fleetId: String, instanceId: String? = nil, serverIp: String? = nil, offset: UInt64? = nil, size: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGameServerInstanceLogUrlResponse> {
        fatalError("GetGameServerInstanceLogUrl is no longer available.")
    }

    /// 获取游戏服务器实例的日志URL
    ///
    /// 本接口用于获取游戏服务器实例的日志URL。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getGameServerInstanceLogUrl(fleetId: String, instanceId: String? = nil, serverIp: String? = nil, offset: UInt64? = nil, size: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGameServerInstanceLogUrlResponse {
        fatalError("GetGameServerInstanceLogUrl is no longer available.")
    }

    /// 获取游戏服务器实例的日志URL
    ///
    /// 本接口用于获取游戏服务器实例的日志URL。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getGameServerInstanceLogUrlPaginated(_ input: GetGameServerInstanceLogUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [String])> {
        fatalError("GetGameServerInstanceLogUrl is no longer available.")
    }

    /// 获取游戏服务器实例的日志URL
    ///
    /// 本接口用于获取游戏服务器实例的日志URL。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func getGameServerInstanceLogUrlPaginated(_ input: GetGameServerInstanceLogUrlRequest, region: TCRegion? = nil, onResponse: @escaping (GetGameServerInstanceLogUrlResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("GetGameServerInstanceLogUrl is no longer available.")
    }

    /// 获取游戏服务器实例的日志URL
    ///
    /// 本接口用于获取游戏服务器实例的日志URL。
    ///
    /// - Returns: `AsyncSequence`s of ``String`` and ``GetGameServerInstanceLogUrlResponse`` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getGameServerInstanceLogUrlPaginator(_ input: GetGameServerInstanceLogUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetGameServerInstanceLogUrlRequest> {
        fatalError("GetGameServerInstanceLogUrl is no longer available.")
    }
}
