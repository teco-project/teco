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

extension Ecm {
    /// CreateDisks请求参数结构体
    public struct CreateDisksRequest: TCRequestModel {
        /// 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目。若不指定项目，将在默认项目下进行创建。
        public let placement: Placement

        /// 云硬盘计费类型。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>CDCPAID：独享集群付费<br>各类型价格请参考云硬盘[价格总览](/document/product/362/2413)。
        public let diskChargeType: String

        /// 硬盘介质类型。取值范围：<br><li>CLOUD_BASIC：表示普通云硬盘<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_SSD：表示SSD云硬盘<br><li>CLOUD_HSSD：表示增强型SSD云硬盘<br><li>CLOUD_TSSD：表示极速型SSD云硬盘。
        public let diskType: String

        /// 云盘显示名称。不传则默认为“未命名”。最大长度不能超60个字节。
        public let diskName: String?

        /// 云盘绑定的标签。
        public let tags: [Tag]?

        /// 预付费模式，即包年包月相关参数设置。通过该参数指定包年包月云盘的购买时长、是否设置自动续费等属性。<br>创建预付费云盘该参数必传，创建按小时后付费云盘无需传该参数。
        public let diskChargePrepaid: DiskChargePrepaid?

        /// 创建云硬盘数量，不传则默认为1。单次请求最多可创建的云盘数有限制，具体参见[云硬盘使用限制](https://cloud.tencent.com/doc/product/362/5145)。
        public let diskCount: UInt64?

        /// 可选参数。使用此参数可给云硬盘购买额外的性能。<br>当前仅支持极速型云盘（CLOUD_TSSD）和增强型SSD云硬盘（CLOUD_HSSD）
        public let throughputPerformance: UInt64?

        /// 云硬盘大小，单位为GB。<br><li>如果传入`SnapshotId`则可不传`DiskSize`，此时新建云盘的大小为快照大小<br><li>如果传入`SnapshotId`同时传入`DiskSize`，则云盘大小必须大于或等于快照大小<br><li>云盘大小取值范围参见云硬盘[产品分类](/document/product/362/2353)的说明。
        public let diskSize: UInt64?

        /// 可选参数，默认为False。传入True时，云盘将创建为共享型云盘。
        public let shareable: Bool?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        public let clientToken: String?

        /// 传入该参数用于创建加密云盘，取值固定为ENCRYPT。
        public let encrypt: String?

        /// 快照ID，如果传入则根据此快照创建云硬盘，快照类型必须为数据盘快照，可通过[DescribeSnapshots](/document/product/362/15647)接口查询快照，见输出参数DiskUsage解释。
        public let snapshotId: String?

        public init(placement: Placement, diskChargeType: String, diskType: String, diskName: String? = nil, tags: [Tag]? = nil, diskChargePrepaid: DiskChargePrepaid? = nil, diskCount: UInt64? = nil, throughputPerformance: UInt64? = nil, diskSize: UInt64? = nil, shareable: Bool? = nil, clientToken: String? = nil, encrypt: String? = nil, snapshotId: String? = nil) {
            self.placement = placement
            self.diskChargeType = diskChargeType
            self.diskType = diskType
            self.diskName = diskName
            self.tags = tags
            self.diskChargePrepaid = diskChargePrepaid
            self.diskCount = diskCount
            self.throughputPerformance = throughputPerformance
            self.diskSize = diskSize
            self.shareable = shareable
            self.clientToken = clientToken
            self.encrypt = encrypt
            self.snapshotId = snapshotId
        }

        enum CodingKeys: String, CodingKey {
            case placement = "Placement"
            case diskChargeType = "DiskChargeType"
            case diskType = "DiskType"
            case diskName = "DiskName"
            case tags = "Tags"
            case diskChargePrepaid = "DiskChargePrepaid"
            case diskCount = "DiskCount"
            case throughputPerformance = "ThroughputPerformance"
            case diskSize = "DiskSize"
            case shareable = "Shareable"
            case clientToken = "ClientToken"
            case encrypt = "Encrypt"
            case snapshotId = "SnapshotId"
        }
    }

    /// CreateDisks返回参数结构体
    public struct CreateDisksResponse: TCResponseModel {
        /// 创建的云硬盘ID列表。
        public let diskIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskIdSet = "DiskIdSet"
            case requestId = "RequestId"
        }
    }

    /// 创建云硬盘
    ///
    /// 本接口（CreateDisks）用于创建云硬盘。
    ///
    /// * 预付费云盘的购买会预先扣除本次云盘购买所需金额，在调用本接口前请确保账户余额充足。
    /// * 本接口支持传入数据盘快照来创建云盘，实现将快照数据复制到新购云盘上。
    /// * 本接口为异步接口，当创建请求下发成功后会返回一个新建的云盘ID列表，此时云盘的创建并未立即完成。可以通过调用[DescribeDisks](/document/product/362/16315)接口根据DiskId查询对应云盘，如果能查到云盘，且状态为'UNATTACHED'或'ATTACHED'，则表示创建成功。
    @inlinable
    public func createDisks(_ input: CreateDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDisksResponse> {
        self.client.execute(action: "CreateDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云硬盘
    ///
    /// 本接口（CreateDisks）用于创建云硬盘。
    ///
    /// * 预付费云盘的购买会预先扣除本次云盘购买所需金额，在调用本接口前请确保账户余额充足。
    /// * 本接口支持传入数据盘快照来创建云盘，实现将快照数据复制到新购云盘上。
    /// * 本接口为异步接口，当创建请求下发成功后会返回一个新建的云盘ID列表，此时云盘的创建并未立即完成。可以通过调用[DescribeDisks](/document/product/362/16315)接口根据DiskId查询对应云盘，如果能查到云盘，且状态为'UNATTACHED'或'ATTACHED'，则表示创建成功。
    @inlinable
    public func createDisks(_ input: CreateDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDisksResponse {
        try await self.client.execute(action: "CreateDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云硬盘
    ///
    /// 本接口（CreateDisks）用于创建云硬盘。
    ///
    /// * 预付费云盘的购买会预先扣除本次云盘购买所需金额，在调用本接口前请确保账户余额充足。
    /// * 本接口支持传入数据盘快照来创建云盘，实现将快照数据复制到新购云盘上。
    /// * 本接口为异步接口，当创建请求下发成功后会返回一个新建的云盘ID列表，此时云盘的创建并未立即完成。可以通过调用[DescribeDisks](/document/product/362/16315)接口根据DiskId查询对应云盘，如果能查到云盘，且状态为'UNATTACHED'或'ATTACHED'，则表示创建成功。
    @inlinable
    public func createDisks(placement: Placement, diskChargeType: String, diskType: String, diskName: String? = nil, tags: [Tag]? = nil, diskChargePrepaid: DiskChargePrepaid? = nil, diskCount: UInt64? = nil, throughputPerformance: UInt64? = nil, diskSize: UInt64? = nil, shareable: Bool? = nil, clientToken: String? = nil, encrypt: String? = nil, snapshotId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDisksResponse> {
        let input = CreateDisksRequest(placement: placement, diskChargeType: diskChargeType, diskType: diskType, diskName: diskName, tags: tags, diskChargePrepaid: diskChargePrepaid, diskCount: diskCount, throughputPerformance: throughputPerformance, diskSize: diskSize, shareable: shareable, clientToken: clientToken, encrypt: encrypt, snapshotId: snapshotId)
        return self.client.execute(action: "CreateDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云硬盘
    ///
    /// 本接口（CreateDisks）用于创建云硬盘。
    ///
    /// * 预付费云盘的购买会预先扣除本次云盘购买所需金额，在调用本接口前请确保账户余额充足。
    /// * 本接口支持传入数据盘快照来创建云盘，实现将快照数据复制到新购云盘上。
    /// * 本接口为异步接口，当创建请求下发成功后会返回一个新建的云盘ID列表，此时云盘的创建并未立即完成。可以通过调用[DescribeDisks](/document/product/362/16315)接口根据DiskId查询对应云盘，如果能查到云盘，且状态为'UNATTACHED'或'ATTACHED'，则表示创建成功。
    @inlinable
    public func createDisks(placement: Placement, diskChargeType: String, diskType: String, diskName: String? = nil, tags: [Tag]? = nil, diskChargePrepaid: DiskChargePrepaid? = nil, diskCount: UInt64? = nil, throughputPerformance: UInt64? = nil, diskSize: UInt64? = nil, shareable: Bool? = nil, clientToken: String? = nil, encrypt: String? = nil, snapshotId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDisksResponse {
        let input = CreateDisksRequest(placement: placement, diskChargeType: diskChargeType, diskType: diskType, diskName: diskName, tags: tags, diskChargePrepaid: diskChargePrepaid, diskCount: diskCount, throughputPerformance: throughputPerformance, diskSize: diskSize, shareable: shareable, clientToken: clientToken, encrypt: encrypt, snapshotId: snapshotId)
        return try await self.client.execute(action: "CreateDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
