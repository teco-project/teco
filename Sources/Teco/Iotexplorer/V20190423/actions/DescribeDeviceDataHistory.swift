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

extension Iotexplorer {
    /// DescribeDeviceDataHistory请求参数结构体
    public struct DescribeDeviceDataHistoryRequest: TCRequestModel {
        /// 区间开始时间（Unix 时间戳，毫秒级）
        public let minTime: UInt64
        
        /// 区间结束时间（Unix 时间戳，毫秒级）
        public let maxTime: UInt64
        
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 属性字段名称，对应数据模板中功能属性的标识符
        public let fieldName: String
        
        /// 返回条数
        public let limit: Int64?
        
        /// 检索上下文
        public let context: String?
        
        public init (minTime: UInt64, maxTime: UInt64, productId: String, deviceName: String, fieldName: String, limit: Int64? = nil, context: String? = nil) {
            self.minTime = minTime
            self.maxTime = maxTime
            self.productId = productId
            self.deviceName = deviceName
            self.fieldName = fieldName
            self.limit = limit
            self.context = context
        }
        
        enum CodingKeys: String, CodingKey {
            case minTime = "MinTime"
            case maxTime = "MaxTime"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case fieldName = "FieldName"
            case limit = "Limit"
            case context = "Context"
        }
    }
    
    /// DescribeDeviceDataHistory返回参数结构体
    public struct DescribeDeviceDataHistoryResponse: TCResponseModel {
        /// 属性字段名称，对应数据模板中功能属性的标识符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fieldName: String?
        
        /// 数据是否已全部返回，true 表示数据全部返回，false 表示还有数据待返回，可将 Context 作为入参，继续查询返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listover: Bool?
        
        /// 检索上下文，当 ListOver 为false时，可以用此上下文，继续读取后续数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let context: String?
        
        /// 历史数据结果数组，返回对应时间点及取值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [DeviceDataHistoryItem]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case fieldName = "FieldName"
            case listover = "Listover"
            case context = "Context"
            case results = "Results"
            case requestId = "RequestId"
        }
    }
    
    /// 获取设备历史数据
    ///
    /// 获取设备在指定时间范围内上报的历史数据。
    @inlinable
    public func describeDeviceDataHistory(_ input: DescribeDeviceDataHistoryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceDataHistoryResponse > {
        self.client.execute(action: "DescribeDeviceDataHistory", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备历史数据
    ///
    /// 获取设备在指定时间范围内上报的历史数据。
    @inlinable
    public func describeDeviceDataHistory(_ input: DescribeDeviceDataHistoryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceDataHistoryResponse {
        try await self.client.execute(action: "DescribeDeviceDataHistory", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
