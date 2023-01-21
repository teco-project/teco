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

extension Clb {
    /// CreateClsLogSet请求参数结构体
    public struct CreateClsLogSetRequest: TCRequestModel {
        /// 日志集的名字，不能和cls其他日志集重名。不填默认为clb_logset。
        public let logsetName: String?

        /// 日志集的保存周期，单位：天。
        public let period: UInt64?

        /// 日志集类型，ACCESS：访问日志，HEALTH：健康检查日志，默认ACCESS。
        public let logsetType: String?

        public init(logsetName: String? = nil, period: UInt64? = nil, logsetType: String? = nil) {
            self.logsetName = logsetName
            self.period = period
            self.logsetType = logsetType
        }

        enum CodingKeys: String, CodingKey {
            case logsetName = "LogsetName"
            case period = "Period"
            case logsetType = "LogsetType"
        }
    }

    /// CreateClsLogSet返回参数结构体
    public struct CreateClsLogSetResponse: TCResponseModel {
        /// 日志集的 ID。
        public let logsetId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logsetId = "LogsetId"
            case requestId = "RequestId"
        }
    }

    /// 创建CLB专有日志集
    ///
    /// 创建CLB专有日志集，此日志集用于存储CLB的日志。
    @inlinable
    public func createClsLogSet(_ input: CreateClsLogSetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClsLogSetResponse> {
        self.client.execute(action: "CreateClsLogSet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建CLB专有日志集
    ///
    /// 创建CLB专有日志集，此日志集用于存储CLB的日志。
    @inlinable
    public func createClsLogSet(_ input: CreateClsLogSetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClsLogSetResponse {
        try await self.client.execute(action: "CreateClsLogSet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建CLB专有日志集
    ///
    /// 创建CLB专有日志集，此日志集用于存储CLB的日志。
    @inlinable
    public func createClsLogSet(logsetName: String? = nil, period: UInt64? = nil, logsetType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClsLogSetResponse> {
        self.createClsLogSet(CreateClsLogSetRequest(logsetName: logsetName, period: period, logsetType: logsetType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建CLB专有日志集
    ///
    /// 创建CLB专有日志集，此日志集用于存储CLB的日志。
    @inlinable
    public func createClsLogSet(logsetName: String? = nil, period: UInt64? = nil, logsetType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClsLogSetResponse {
        try await self.createClsLogSet(CreateClsLogSetRequest(logsetName: logsetName, period: period, logsetType: logsetType), region: region, logger: logger, on: eventLoop)
    }
}
