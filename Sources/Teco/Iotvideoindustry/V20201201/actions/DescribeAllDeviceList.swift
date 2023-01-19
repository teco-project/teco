//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Iotvideoindustry {
    /// DescribeAllDeviceList请求参数结构体
    public struct DescribeAllDeviceListRequest: TCRequestModel {
        /// 偏移量，默认0
        public let offset: Int64?

        /// 限制，默认200
        public let limit: Int64?

        /// 设备名称，需要模糊匹配设备名称时为必填
        public let nickName: String?

        /// DeviceId列表，需要精确查找设备时为必填
        public let deviceIds: [String]?

        /// 设备类型过滤，设备类型，1：国标VMS设备(公有云不支持此类型)，2：国标IPC设备，3：国标NVR设备，9：智能告警设备(公有云不支持此类型)
        public let deviceTypes: [Int64]?

        public init(offset: Int64? = nil, limit: Int64? = nil, nickName: String? = nil, deviceIds: [String]? = nil, deviceTypes: [Int64]? = nil) {
            self.offset = offset
            self.limit = limit
            self.nickName = nickName
            self.deviceIds = deviceIds
            self.deviceTypes = deviceTypes
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case nickName = "NickName"
            case deviceIds = "DeviceIds"
            case deviceTypes = "DeviceTypes"
        }
    }

    /// DescribeAllDeviceList返回参数结构体
    public struct DescribeAllDeviceListResponse: TCResponseModel {
        /// 设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 设备详细信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devices: [AllDeviceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case devices = "Devices"
            case requestId = "RequestId"
        }
    }

    /// 获取设备列表（旧）
    ///
    /// 本接口(DescribeAllDeviceList) 用于获取设备列表。
    /// 请使用DescribeDevicesList接口
    @inlinable
    public func describeAllDeviceList(_ input: DescribeAllDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllDeviceListResponse> {
        self.client.execute(action: "DescribeAllDeviceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表（旧）
    ///
    /// 本接口(DescribeAllDeviceList) 用于获取设备列表。
    /// 请使用DescribeDevicesList接口
    @inlinable
    public func describeAllDeviceList(_ input: DescribeAllDeviceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllDeviceListResponse {
        try await self.client.execute(action: "DescribeAllDeviceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表（旧）
    ///
    /// 本接口(DescribeAllDeviceList) 用于获取设备列表。
    /// 请使用DescribeDevicesList接口
    @inlinable
    public func describeAllDeviceList(offset: Int64? = nil, limit: Int64? = nil, nickName: String? = nil, deviceIds: [String]? = nil, deviceTypes: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllDeviceListResponse> {
        self.describeAllDeviceList(DescribeAllDeviceListRequest(offset: offset, limit: limit, nickName: nickName, deviceIds: deviceIds, deviceTypes: deviceTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备列表（旧）
    ///
    /// 本接口(DescribeAllDeviceList) 用于获取设备列表。
    /// 请使用DescribeDevicesList接口
    @inlinable
    public func describeAllDeviceList(offset: Int64? = nil, limit: Int64? = nil, nickName: String? = nil, deviceIds: [String]? = nil, deviceTypes: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllDeviceListResponse {
        try await self.describeAllDeviceList(DescribeAllDeviceListRequest(offset: offset, limit: limit, nickName: nickName, deviceIds: deviceIds, deviceTypes: deviceTypes), region: region, logger: logger, on: eventLoop)
    }
}
