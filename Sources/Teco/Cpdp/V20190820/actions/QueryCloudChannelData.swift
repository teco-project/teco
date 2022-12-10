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

extension Cpdp {
    /// 聚鑫V2-查询第三方渠道数据
    ///
    /// 发起支付等渠道操作后，可以调用该接口查询渠道的数据。
    @inlinable
    public func queryCloudChannelData(_ input: QueryCloudChannelDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryCloudChannelDataResponse > {
        self.client.execute(action: "QueryCloudChannelData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 聚鑫V2-查询第三方渠道数据
    ///
    /// 发起支付等渠道操作后，可以调用该接口查询渠道的数据。
    @inlinable
    public func queryCloudChannelData(_ input: QueryCloudChannelDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCloudChannelDataResponse {
        try await self.client.execute(action: "QueryCloudChannelData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryCloudChannelData请求参数结构体
    public struct QueryCloudChannelDataRequest: TCRequestModel {
        /// 米大师分配的支付主MidasAppId
        public let midasAppId: String
        
        /// 业务订单号，外部订单号
        public let outOrderNo: String
        
        /// 数据类型
        /// PAYMENT:支付
        public let externalChannelDataType: String
        
        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let midasEnvironment: String?
        
        /// 子应用ID
        public let subAppId: String?
        
        /// 渠道订单号
        public let channelOrderId: String?
        
        /// 渠道名称，指定渠道查询
        /// wechat:微信支付
        public let channel: String?
        
        public init (midasAppId: String, outOrderNo: String, externalChannelDataType: String, midasEnvironment: String?, subAppId: String?, channelOrderId: String?, channel: String?) {
            self.midasAppId = midasAppId
            self.outOrderNo = outOrderNo
            self.externalChannelDataType = externalChannelDataType
            self.midasEnvironment = midasEnvironment
            self.subAppId = subAppId
            self.channelOrderId = channelOrderId
            self.channel = channel
        }
        
        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case outOrderNo = "OutOrderNo"
            case externalChannelDataType = "ExternalChannelDataType"
            case midasEnvironment = "MidasEnvironment"
            case subAppId = "SubAppId"
            case channelOrderId = "ChannelOrderId"
            case channel = "Channel"
        }
    }
    
    /// QueryCloudChannelData返回参数结构体
    public struct QueryCloudChannelDataResponse: TCResponseModel {
        /// 外部订单号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let outOrderNo: String?
        
        /// 渠道订单号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let channelOrderId: String?
        
        /// 第三方渠道数据类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let externalChannelDataType: String?
        
        /// 渠道名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let channel: String?
        
        /// 第三方渠道数据列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let externalChannelDataList: [CloudExternalChannelData]?
        
        /// 子应用ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subAppId: String?
        
        /// 米大师分配的支付主MidasAppId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case outOrderNo = "OutOrderNo"
            case channelOrderId = "ChannelOrderId"
            case externalChannelDataType = "ExternalChannelDataType"
            case channel = "Channel"
            case externalChannelDataList = "ExternalChannelDataList"
            case subAppId = "SubAppId"
            case appId = "AppId"
            case requestId = "RequestId"
        }
    }
}
