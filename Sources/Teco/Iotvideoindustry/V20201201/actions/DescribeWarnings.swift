//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeWarnings请求参数结构体
    public struct DescribeWarningsRequest: TCRequestModel {
        /// 1:创建时间倒序 2：创建时间升序 3：level倒序 4：leve升序
        public let orderType: Int64

        /// 可选设备id
        public let deviceId: String?

        /// 如果不传则查询所有，取值参见配置
        public let warnLevelArray: [Int64]?

        /// 如果不传则查询所有，取值参见配置
        public let warnModeArray: [Int64]?

        /// 不传认为是0
        public let offset: Int64?

        /// 不传认为是20
        public let limit: Int64?

        /// 形似：2021-05-21 00:00:00 .取值在当前日前30天内，不传默认是当前日前30天日期
        public let dateBegin: String?

        /// 形似：2021-05-21 23:59:59 .取值在当前日前30天内，不传默认是当前日前30天日期
        public let dateEnd: String?

        public init(orderType: Int64, deviceId: String? = nil, warnLevelArray: [Int64]? = nil, warnModeArray: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, dateBegin: String? = nil, dateEnd: String? = nil) {
            self.orderType = orderType
            self.deviceId = deviceId
            self.warnLevelArray = warnLevelArray
            self.warnModeArray = warnModeArray
            self.offset = offset
            self.limit = limit
            self.dateBegin = dateBegin
            self.dateEnd = dateEnd
        }

        enum CodingKeys: String, CodingKey {
            case orderType = "OrderType"
            case deviceId = "DeviceId"
            case warnLevelArray = "WarnLevelArray"
            case warnModeArray = "WarnModeArray"
            case offset = "Offset"
            case limit = "Limit"
            case dateBegin = "DateBegin"
            case dateEnd = "DateEnd"
        }
    }

    /// DescribeWarnings返回参数结构体
    public struct DescribeWarningsResponse: TCResponseModel {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 告警列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [WarningsData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取告警列表
    @inlinable
    public func describeWarnings(_ input: DescribeWarningsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWarningsResponse > {
        self.client.execute(action: "DescribeWarnings", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警列表
    @inlinable
    public func describeWarnings(_ input: DescribeWarningsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWarningsResponse {
        try await self.client.execute(action: "DescribeWarnings", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取告警列表
    @inlinable
    public func describeWarnings(orderType: Int64, deviceId: String? = nil, warnLevelArray: [Int64]? = nil, warnModeArray: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, dateBegin: String? = nil, dateEnd: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWarningsResponse > {
        self.describeWarnings(DescribeWarningsRequest(orderType: orderType, deviceId: deviceId, warnLevelArray: warnLevelArray, warnModeArray: warnModeArray, offset: offset, limit: limit, dateBegin: dateBegin, dateEnd: dateEnd), logger: logger, on: eventLoop)
    }

    /// 获取告警列表
    @inlinable
    public func describeWarnings(orderType: Int64, deviceId: String? = nil, warnLevelArray: [Int64]? = nil, warnModeArray: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, dateBegin: String? = nil, dateEnd: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWarningsResponse {
        try await self.describeWarnings(DescribeWarningsRequest(orderType: orderType, deviceId: deviceId, warnLevelArray: warnLevelArray, warnModeArray: warnModeArray, offset: offset, limit: limit, dateBegin: dateBegin, dateEnd: dateEnd), logger: logger, on: eventLoop)
    }
}
