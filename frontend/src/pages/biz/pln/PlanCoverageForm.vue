<template>
  <div class="collapse-page">
    <div class="markup-tables flex">
      <va-card title="담보" class="flex mb-4">
        <va-card-content>
          <va-accordion v-model="basicAccordionValue">
            <va-collapse class="mb-4" :header="$t('newPlan.coverage.title')">              
              <div class="table-wrapper">
                <table class="va-table">
                  <thead>
                    <tr>
                      <th>선택</th>
                      <th>담보코드</th>
                      <th>담보명</th>
                      <th>보험기간</th>
                      <th>납입기간</th>
                      <th>가입금액</th>
                      <th>기본보험료</th>
                      <th>적용보험료</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr v-for="planCoverage in planCoverageFormData.coverages" :key="planCoverage.cvrcd">
                      <td>
                        <va-checkbox v-model="planCoverage.check" />
                      </td>
                      <td>
                        <va-input v-model="planCoverage.cvrcd" />
                      </td>
                      <td>
                        <va-input v-model="planCoverage.cvrnm" />
                      </td>
                      <td>
                        <va-select size="small"
                          v-model="planCoverage.ndcd"
                          value-by="value"
                          :options="insuranceTerms"
                        />
                      </td>
                      <td>
                        <va-select size="small"
                          v-model="planCoverage.pymTrmcd"
                          value-by="value"
                          :options="paymentTerms"
                        />
                      </td>
                      <td>
                        <va-input v-model="planCoverage.isamt" />
                      </td>
                      <td>
                        <va-input v-model="planCoverage.baPrm" />
                      </td>
                      <td>
                        <va-input v-model="planCoverage.apPrm" />
                      </td>
                    </tr>
                  </tbody>
                </table>                
              </div>
            </va-collapse>
          </va-accordion>
        </va-card-content>
        <va-button :rounded="false" size="small" class="mr-4 mb-2" v-on:click="modify" color="warning">{{'담보 수정'}}</va-button>
      </va-card>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      basicAccordionValue: [true],
      planCoverageFormData: this.planCoverageData,
      coverageInfoFormData: null,
      insuranceTerms: [],
      paymentTerms: [],
    }
  },
  props : {
    planCoverageData: {
      type: Object
    },
    goodsInformation: {
      type: Object
    }
  },
  watch: {
    //조회된 설계번호의 담보data
    planCoverageData: function ( obj ) {
      this.planCoverageFormData = obj; 
    },
    //selectbox 선택항목으로 사용하는 상품메타데이터(보험기간, 납입기간)
    goodsInformation: function ( obj ) {
      for(let i=0; i<obj.insuranceTerm.length; i++){
        const array = {
          value: obj.insuranceTerm[i].code,
          text: obj.insuranceTerm[i].value
        }
        this.insuranceTerms.push(array);
      }

      for(let i=0; i<obj.paymentTerm.length; i++){
        const array = {
          value: obj.paymentTerm[i].code,
          text: obj.paymentTerm[i].value
        }
        this.paymentTerms.push(array);
      }
    }
  },
  methods: {
    initData () {
      console.log("initData");
    },

    created () {
      console.log("created...");
      this.initData();
    },
    modify() {
      this.$emit("modify", this.planCoverageFormData);
    }
  },

  created () {
    console.log("created...");
  }
}
</script>

<style lang="scss">
  .markup-tables {
    .table-wrapper {
      overflow: auto;
    }

    .va-table {
      width: 100%;
    }
  }
</style>
