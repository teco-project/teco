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

extension Iotvideo {
    /// DescribeDeviceModel请求参数结构体
    public struct DescribeDeviceModelRequest: TCRequestModel {
        /// 设备TID
        public let tid: String

        /// 物模型的分支路径
        public let branch: String?

        public init(tid: String, branch: String? = nil) {
            self.tid = tid
            self.branch = branch
        }

        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case branch = "Branch"
        }
    }

    /// DescribeDeviceModel返回参数结构体
    public struct DescribeDeviceModelResponse: TCResponseModel {
        /// 设备物模型信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DeviceModelData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取设备物模型
    ///
    /// 本接口（DescribeDeviceModel）用于获取设备物模型。
    @inlinable
    public func describeDeviceModel(_ input: DescribeDeviceModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceModelResponse> {
        self.client.execute(action: "DescribeDeviceModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备物模型
    ///
    /// 本接口（DescribeDeviceModel）用于获取设备物模型。
    @inlinable
    public func describeDeviceModel(_ input: DescribeDeviceModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceModelResponse {
        try await self.client.execute(action: "DescribeDeviceModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备物模型
    ///
    /// 本接口（DescribeDeviceModel）用于获取设备物模型。
    @inlinable
    public func describeDeviceModel(tid: String, branch: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceModelResponse> {
        self.describeDeviceModel(DescribeDeviceModelRequest(tid: tid, branch: branch), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备物模型
    ///
    /// 本接口（DescribeDeviceModel）用于获取设备物模型。
    @inlinable
    public func describeDeviceModel(tid: String, branch: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceModelResponse {
        try await self.describeDeviceModel(DescribeDeviceModelRequest(tid: tid, branch: branch), region: region, logger: logger, on: eventLoop)
    }
}
