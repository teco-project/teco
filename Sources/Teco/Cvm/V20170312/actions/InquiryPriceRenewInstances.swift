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

extension Cvm {
    /// InquiryPriceRenewInstances请求参数结构体
    public struct InquiryPriceRenewInstancesRequest: TCRequestModel {
        /// 一个或多个待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        public let instanceIds: [String]
        
        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。
        public let instanceChargePrepaid: InstanceChargePrepaid
        
        /// 试运行，测试使用，不执行具体逻辑。取值范围：<br><li>TRUE：跳过执行逻辑<br><li>FALSE：执行逻辑<br><br>默认取值：FALSE。
        public let dryRun: Bool?
        
        /// 是否续费弹性数据盘。取值范围：<br><li>TRUE：表示续费包年包月实例同时续费其挂载的弹性数据盘<br><li>FALSE：表示续费包年包月实例同时不再续费其挂载的弹性数据盘<br><br>默认取值：TRUE。
        public let renewPortableDataDisk: Bool?
        
        public init (instanceIds: [String], instanceChargePrepaid: InstanceChargePrepaid, dryRun: Bool? = nil, renewPortableDataDisk: Bool? = nil) {
            self.instanceIds = instanceIds
            self.instanceChargePrepaid = instanceChargePrepaid
            self.dryRun = dryRun
            self.renewPortableDataDisk = renewPortableDataDisk
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case dryRun = "DryRun"
            case renewPortableDataDisk = "RenewPortableDataDisk"
        }
    }
    
    /// InquiryPriceRenewInstances返回参数结构体
    public struct InquiryPriceRenewInstancesResponse: TCResponseModel {
        /// 该参数表示对应配置实例的价格。
        public let price: Price
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }
    
    /// 续费实例询价
    ///
    /// 本接口 (InquiryPriceRenewInstances) 用于续费包年包月实例询价。
    /// * 只支持查询包年包月实例的续费价格。
    @inlinable
    public func inquiryPriceRenewInstances(_ input: InquiryPriceRenewInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceRenewInstancesResponse > {
        self.client.execute(action: "InquiryPriceRenewInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 续费实例询价
    ///
    /// 本接口 (InquiryPriceRenewInstances) 用于续费包年包月实例询价。
    /// * 只支持查询包年包月实例的续费价格。
    @inlinable
    public func inquiryPriceRenewInstances(_ input: InquiryPriceRenewInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewInstancesResponse {
        try await self.client.execute(action: "InquiryPriceRenewInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
