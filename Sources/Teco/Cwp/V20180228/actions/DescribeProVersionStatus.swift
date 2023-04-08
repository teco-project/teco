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

extension Cwp {
    /// DescribeProVersionStatus请求参数结构体
    public struct DescribeProVersionStatusRequest: TCRequestModel {
        /// 云镜客户端UUID、填写"all"表示所有主机。
        public let uuid: String

        public init(uuid: String) {
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
        }
    }

    /// DescribeProVersionStatus返回参数结构体
    public struct DescribeProVersionStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 获取专业版状态
    ///
    /// 用于获取单台主机或所有主机是否开通专业版状态。
    @inlinable @discardableResult
    public func describeProVersionStatus(_ input: DescribeProVersionStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProVersionStatusResponse> {
        self.client.execute(action: "DescribeProVersionStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取专业版状态
    ///
    /// 用于获取单台主机或所有主机是否开通专业版状态。
    @inlinable @discardableResult
    public func describeProVersionStatus(_ input: DescribeProVersionStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProVersionStatusResponse {
        try await self.client.execute(action: "DescribeProVersionStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取专业版状态
    ///
    /// 用于获取单台主机或所有主机是否开通专业版状态。
    @inlinable @discardableResult
    public func describeProVersionStatus(uuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProVersionStatusResponse> {
        self.describeProVersionStatus(.init(uuid: uuid), region: region, logger: logger, on: eventLoop)
    }

    /// 获取专业版状态
    ///
    /// 用于获取单台主机或所有主机是否开通专业版状态。
    @inlinable @discardableResult
    public func describeProVersionStatus(uuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProVersionStatusResponse {
        try await self.describeProVersionStatus(.init(uuid: uuid), region: region, logger: logger, on: eventLoop)
    }
}
