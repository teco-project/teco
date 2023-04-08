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

extension Yunjing {
    /// MisAlarmNonlocalLoginPlaces请求参数结构体
    public struct MisAlarmNonlocalLoginPlacesRequest: TCRequestModel {
        /// 异地登录事件Id数组。
        public let ids: [UInt64]

        public init(ids: [UInt64]) {
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }

    /// MisAlarmNonlocalLoginPlaces返回参数结构体
    public struct MisAlarmNonlocalLoginPlacesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 误报异地登录
    ///
    /// 本接口{MisAlarmNonlocalLoginPlaces}将设置当前地点为常用登录地。
    @inlinable @discardableResult
    public func misAlarmNonlocalLoginPlaces(_ input: MisAlarmNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MisAlarmNonlocalLoginPlacesResponse> {
        self.client.execute(action: "MisAlarmNonlocalLoginPlaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 误报异地登录
    ///
    /// 本接口{MisAlarmNonlocalLoginPlaces}将设置当前地点为常用登录地。
    @inlinable @discardableResult
    public func misAlarmNonlocalLoginPlaces(_ input: MisAlarmNonlocalLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MisAlarmNonlocalLoginPlacesResponse {
        try await self.client.execute(action: "MisAlarmNonlocalLoginPlaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 误报异地登录
    ///
    /// 本接口{MisAlarmNonlocalLoginPlaces}将设置当前地点为常用登录地。
    @inlinable @discardableResult
    public func misAlarmNonlocalLoginPlaces(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MisAlarmNonlocalLoginPlacesResponse> {
        self.misAlarmNonlocalLoginPlaces(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }

    /// 误报异地登录
    ///
    /// 本接口{MisAlarmNonlocalLoginPlaces}将设置当前地点为常用登录地。
    @inlinable @discardableResult
    public func misAlarmNonlocalLoginPlaces(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MisAlarmNonlocalLoginPlacesResponse {
        try await self.misAlarmNonlocalLoginPlaces(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }
}
